# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# pyre-unsafe

"""
Support classes for generating random values for thrift types
"""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function
from __future__ import unicode_literals

from thrift import Thrift


def get_spec(ttype, spec_args):
    """Create or get an existing introspection wrapper for a thrift type.

    Args:
        ttype (Thrift.TType): the thrift type
        spec_args: optional type-dependent additional information generated by
        the thrift compiler (e.g. the type of a list's elements)
    """
    for s in get_spec.cache:
        if s.ttype == ttype and s.spec_args == spec_args:
            return s

    # enums and i32s share the same thrift type. They can be distinguished
    # based on spec_args, which is None for ints
    if ttype == Thrift.TType.I32 and spec_args:
        return ThriftEnumSpec(ttype, spec_args)
    type_map = {
        Thrift.TType.BOOL: ThriftBoolSpec,
        Thrift.TType.BYTE: ThriftByteSpec,
        Thrift.TType.I16: ThriftI16Spec,
        Thrift.TType.I32: ThriftI32Spec,
        Thrift.TType.I64: ThriftI64Spec,
        Thrift.TType.FLOAT: ThriftFloatSpec,
        Thrift.TType.DOUBLE: ThriftDoubleSpec,
        Thrift.TType.STRING: ThriftScalarSpec,
        Thrift.TType.LIST: ThriftListSpec,
        Thrift.TType.SET: ThriftSetSpec,
        Thrift.TType.MAP: ThriftMapSpec,
        Thrift.TType.STRUCT: ThriftStructSpec,
    }
    spec = type_map[ttype](ttype, spec_args)
    get_spec.cache.append(spec)
    spec._init_subelements()
    return spec


get_spec.cache = []


class ThriftTypeSpec(object):
    """Base class that abstracts the functionality required by the randomizer"""
    SUBTYPE_ELEMENT = "element"
    SUBTYPE_KEY = "key"
    SUBTYPE_VALUE = "value"

    def __init__(self, ttype):
        self.ttype = ttype

    @classmethod
    def is_enum(cls):
        return False

    def get_type_name(self):
        raise NotImplementedError

    def get_type(self):
        raise NotImplementedError

    def construct_instance(self, *args, **kwargs):
        """Construct a thrift type instance from appropriate arguments"""
        return self.get_type()(*args, **kwargs)

    def get_subtypes(self):
        """Return a mapping from each subtype to its ThriftTypeSpec. Non-empty
        for lists, sets, maps and structs. The key identifies the field name
        for structs; for other types, names defined above are used
        """
        return {}

    def get_subtype_requiredness(self):
        """Return a mapping from each subtype to its requiredness. The keys are
        the same as for get_subtypes and the values are booleans
        """
        return {}

    def value_to_dict(self, thrift_value):
        """Return a mapping from field names to values. Only required for
        structs
        """
        raise NotImplementedError


class ThriftPyTypeSpec(ThriftTypeSpec):
    """TypeSpec implementation for python thrift structures"""
    name = ""

    def __init__(self, ttype, spec_args):
        super(ThriftPyTypeSpec, self).__init__(ttype)
        self.spec_args = spec_args

    def __eq__(self, other):
        return (
            self.ttype == other.ttype
            and self.spec_args == other.spec_args
        )

    def _init_subelements(self):
        pass


class ThriftScalarSpec(ThriftPyTypeSpec):
    def get_type_name(self):
        return self.name


class ThriftEnumSpec(ThriftPyTypeSpec):
    @classmethod
    def is_enum(cls):
        return True

    def names_to_values(self):
        return self.spec_args._NAMES_TO_VALUES

    def get_type_name(self):
        return self.spec_args.__name__

    def get_type(self):
        return self.spec_args

    def construct_instance(self, value):
        # enums are ints. The thrift enum type (self.spec_args) is not supposed to be
        # instantiated
        return int(value)


def _build_scalar_type_spec(_name):
    class _ScalarTypeSpec(ThriftScalarSpec):
        name = _name

    return _ScalarTypeSpec


ThriftBoolSpec = _build_scalar_type_spec("bool")
ThriftByteSpec = _build_scalar_type_spec("byte")
ThriftI16Spec = _build_scalar_type_spec("i16")
ThriftI32Spec = _build_scalar_type_spec("i32")
ThriftI64Spec = _build_scalar_type_spec("i64")
ThriftFloatSpec = _build_scalar_type_spec("float")
ThriftDoubleSpec = _build_scalar_type_spec("double")
ThriftStringSpec = _build_scalar_type_spec("string")


class ThriftNonAssociativeContainerSpec(ThriftPyTypeSpec):
    def _init_subelements(self):
        elem_ttype, elem_spec_args = self.spec_args
        self.elem_spec = get_spec(elem_ttype, elem_spec_args)

    def get_type_name(self):
        return "{}<{}>".format(self.name, self.elem_spec.get_type_name())

    def get_subtypes(self):
        return {self.SUBTYPE_ELEMENT: self.elem_spec}


class ThriftListSpec(ThriftNonAssociativeContainerSpec):
    name = "list"

    def get_type(self):
        return list

class ThriftSetSpec(ThriftNonAssociativeContainerSpec):
    name = "set"

    def get_type(self):
        return set

class ThriftMapSpec(ThriftPyTypeSpec):
    name = "map"

    def get_type(self):
        return dict

    def _init_subelements(self):
        key_ttype, key_spec_args, val_ttype, val_spec_args = self.spec_args
        self.key_spec = get_spec(key_ttype, key_spec_args)
        self.val_spec = get_spec(val_ttype, val_spec_args)

    def get_type_name(self):
        return "{}<{}, {}>".format(
            self.name,
            self.key_spec.get_type_name(),
            self.val_spec.get_type_name(),
        )

    def get_subtypes(self):
        return {
            self.SUBTYPE_KEY: self.key_spec,
            self.SUBTYPE_VALUE: self.val_spec
        }


class ThriftStructSpec(ThriftPyTypeSpec):
    def _is_required(self, required_value):
        """Enum defined in /thrift/compiler/parse/t_field.h:

        T_REQUIRED = 0
        T_OPTIONAL = 1
        T_OPT_IN_REQ_OUT = 2

        Return True iff required_value is T_REQUIRED
        """
        return required_value == 0

    def _init_subelements(self):
        # For a TType.STRUCT, the spec_args is a tuple
        # (py thrift type, py thrift type spec, kind, [adapter name]),
        # where kind is True for a union and False otherwise
        self.type_class, self.type_spec, self.is_union = self.spec_args[:3]

        self.subtypes = {}
        self.subtype_requiredness = {}
        for attr_spec in self.type_spec:
            if attr_spec is None:
                continue
            _, ttype, attr_name, spec_args, _, req = attr_spec
            self.subtypes[attr_name] = get_spec(ttype, spec_args)
            self.subtype_requiredness[attr_name] = self._is_required(req)

    def get_type_name(self):
        return self.type_class.__name__

    def get_type(self):
        return self.type_class

    def get_subtypes(self):
        return self.subtypes

    def get_subtype_requiredness(self):
        return self.subtype_requiredness

    def value_to_dict(self, thrift_value):
        if isinstance(thrift_value, dict):
            return thrift_value
        res = {}
        if self.is_union:
            field = getattr(thrift_value, 'field', None)
            value = getattr(thrift_value, 'value', None)
            thrift_spec = getattr(thrift_value, 'thrift_spec', None)
            if not field or not thrift_spec:
                return res
            field_spec = thrift_spec[field]
            if not field_spec or len(field_spec) < 3:
                return res
            res[field_spec[2]] = value
        else:
            for key, value in vars(thrift_value).items():
                if value is not None:
                    res[key] = value
        return res
