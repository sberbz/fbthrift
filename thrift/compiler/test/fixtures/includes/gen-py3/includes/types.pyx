#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
cimport cython as __cython
from cpython.bytes cimport PyBytes_AsStringAndSize
from cpython.object cimport PyTypeObject, Py_LT, Py_LE, Py_EQ, Py_NE, Py_GT, Py_GE
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from libcpp.iterator cimport inserter as cinserter
from libcpp.utility cimport move as cmove
from cpython cimport bool as pbool
from cython.operator cimport dereference as deref, preincrement as inc, address as ptr_address
import thrift.py3.types
cimport thrift.py3.types
cimport thrift.py3.exceptions
from thrift.py3.types cimport (
    cSetOp as __cSetOp,
    richcmp as __richcmp,
    set_op as __set_op,
    setcmp as __setcmp,
    list_index as __list_index,
    list_count as __list_count,
    list_slice as __list_slice,
    list_getitem as __list_getitem,
    set_iter as __set_iter,
    map_iter as __map_iter,
    map_contains as __map_contains,
    map_getitem as __map_getitem,
    reference_shared_ptr as __reference_shared_ptr,
    translate_cpp_enum_to_python,
    SetMetaClass as __SetMetaClass,
    const_pointer_cast,
    constant_shared_ptr,
    default_inst,
    NOTSET as __NOTSET,
    EnumData as __EnumData,
    EnumFlagsData as __EnumFlagsData,
    UnionTypeEnumData as __UnionTypeEnumData,
    createEnumDataForUnionType as __createEnumDataForUnionType,
)
cimport thrift.py3.std_libcpp as std_libcpp
cimport thrift.py3.serializer as serializer
import folly.iobuf as __iobuf
from folly.optional cimport cOptional
from folly.memory cimport to_shared_ptr as __to_shared_ptr

import sys
from collections.abc import Sequence, Set, Mapping, Iterable
import weakref as __weakref
import builtins as _builtins
cimport transitive.types as _transitive_types
import transitive.types as _transitive_types

cimport includes.types_reflection as _types_reflection



@__cython.auto_pickle(False)
cdef class Included(thrift.py3.types.Struct):

    def __init__(
        Included self, *,
        MyIntField=None,
        _transitive_types.Foo MyTransitiveField=None
    ):
        if MyIntField is not None:
            if not isinstance(MyIntField, int):
                raise TypeError(f'MyIntField is not a { int !r}.')
            MyIntField = <cint64_t> MyIntField

        self._cpp_obj = __to_shared_ptr(cmove(Included._make_instance(
          NULL,
          NULL,
          MyIntField,
          MyTransitiveField,
        )))

    def __call__(
        Included self,
        MyIntField=__NOTSET,
        MyTransitiveField=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[2] __isNOTSET  # so make_instance is typed

        __fbthrift_changed = False
        if MyIntField is ___NOTSET:
            __isNOTSET[0] = True
            MyIntField = None
        else:
            __isNOTSET[0] = False
            __fbthrift_changed = True

        if MyTransitiveField is ___NOTSET:
            __isNOTSET[1] = True
            MyTransitiveField = None
        else:
            __isNOTSET[1] = False
            __fbthrift_changed = True


        if not __fbthrift_changed:
            return self

        if MyIntField is not None:
            if not isinstance(MyIntField, int):
                raise TypeError(f'MyIntField is not a { int !r}.')
            MyIntField = <cint64_t> MyIntField

        if MyTransitiveField is not None:
            if not isinstance(MyTransitiveField, _transitive_types.Foo):
                raise TypeError(f'MyTransitiveField is not a { _transitive_types.Foo !r}.')

        __fbthrift_inst = <Included>Included.__new__(Included)
        __fbthrift_inst._cpp_obj = __to_shared_ptr(cmove(Included._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          MyIntField,
          MyTransitiveField,
        )))
        return __fbthrift_inst

    @staticmethod
    cdef unique_ptr[cIncluded] _make_instance(
        cIncluded* base_instance,
        bint* __isNOTSET,
        object MyIntField ,
        _transitive_types.Foo MyTransitiveField 
    ) except *:
        cdef unique_ptr[cIncluded] c_inst
        if base_instance:
            c_inst = make_unique[cIncluded](deref(base_instance))
        else:
            c_inst = make_unique[cIncluded]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and MyIntField is None:
                deref(c_inst).MyIntField_ref().assign(default_inst[cIncluded]().MyIntField_ref().value())
                deref(c_inst).__isset.MyIntField = False
                pass

            if not __isNOTSET[1] and MyTransitiveField is None:
                deref(c_inst).MyTransitiveField_ref().assign(default_inst[cIncluded]().MyTransitiveField_ref().value())
                deref(c_inst).__isset.MyTransitiveField = False
                pass

        if MyIntField is not None:
            deref(c_inst).MyIntField_ref().assign(MyIntField)
            deref(c_inst).__isset.MyIntField = True
        if MyTransitiveField is not None:
            deref(c_inst).MyTransitiveField_ref().assign(deref((<_transitive_types.Foo?> MyTransitiveField)._cpp_obj))
            deref(c_inst).__isset.MyTransitiveField = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return cmove(c_inst)

    cdef object __fbthrift_isset(self):
        return thrift.py3.types._IsSet("Included", {
          "MyIntField": deref(self._cpp_obj).MyIntField_ref().has_value(),
          "MyTransitiveField": deref(self._cpp_obj).MyTransitiveField_ref().has_value(),
        })

    def __iter__(self):
        yield 'MyIntField', self.MyIntField
        yield 'MyTransitiveField', self.MyTransitiveField

    @staticmethod
    cdef create(shared_ptr[cIncluded] cpp_obj):
        __fbthrift_inst = <Included>Included.__new__(Included)
        __fbthrift_inst._cpp_obj = cmove(cpp_obj)
        return __fbthrift_inst

    @property
    def MyIntField(self):

        return deref(self._cpp_obj).MyIntField_ref().value()

    @property
    def MyTransitiveField(self):

        if self.__field_MyTransitiveField is None:
            self.__field_MyTransitiveField = _transitive_types.Foo.create(__reference_shared_ptr(deref(self._cpp_obj).MyTransitiveField_ref().ref(), self._cpp_obj))
        return self.__field_MyTransitiveField


    def __hash__(Included self):
        return  super().__hash__()

    def __copy__(Included self):
        cdef shared_ptr[cIncluded] cpp_obj = make_shared[cIncluded](
            deref(self._cpp_obj)
        )
        return Included.create(cmove(cpp_obj))

    def __richcmp__(self, other, int op):
        r = self.__cmp_sametype(other, op)
        return __richcmp[cIncluded](
            self._cpp_obj,
            (<Included>other)._cpp_obj,
            op,
        ) if r is None else r

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__Included()

    cdef __iobuf.IOBuf _serialize(Included self, __Protocol proto):
        cdef unique_ptr[__iobuf.cIOBuf] data
        with nogil:
            data = cmove(serializer.cserialize[cIncluded](self._cpp_obj.get(), proto))
        return __iobuf.from_unique_ptr(cmove(data))

    cdef cuint32_t _deserialize(Included self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cIncluded]()
        with nogil:
            needed = serializer.cdeserialize[cIncluded](buf, self._cpp_obj.get(), proto)
        return needed


ExampleIncluded = Included.create(constant_shared_ptr(cExampleIncluded()))
IncludedConstant = 42
IncludedInt64 = int
TransitiveFoo = _transitive_types.Foo
