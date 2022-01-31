#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
cdef class decorated_struct_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.decorated_struct

    def __iter__(self):
        yield "field", self.field

cdef class ContainerStruct_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.ContainerStruct

    def __iter__(self):
        yield "fieldA", self.fieldA
        yield "fieldB", self.fieldB
        yield "fieldC", self.fieldC
        yield "fieldD", self.fieldD
        yield "fieldE", self.fieldE
        yield "fieldF", self.fieldF
        yield "fieldG", self.fieldG
        yield "fieldH", self.fieldH

cdef class CppTypeStruct_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.CppTypeStruct

    def __iter__(self):
        yield "fieldA", self.fieldA

cdef class VirtualStruct_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.VirtualStruct

    def __iter__(self):
        yield "MyIntField", self.MyIntField

cdef class MyStructWithForwardRefEnum_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.MyStructWithForwardRefEnum

    def __iter__(self):
        yield "a", self.a
        yield "b", self.b

cdef class TrivialNumeric_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.TrivialNumeric

    def __iter__(self):
        yield "a", self.a
        yield "b", self.b

cdef class TrivialNestedWithDefault_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.TrivialNestedWithDefault

    def __iter__(self):
        yield "z", self.z
        yield "n", self.n

cdef class ComplexString_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.ComplexString

    def __iter__(self):
        yield "a", self.a
        yield "b", self.b

cdef class ComplexNestedWithDefault_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.ComplexNestedWithDefault

    def __iter__(self):
        yield "z", self.z
        yield "n", self.n

cdef class MinPadding_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.MinPadding

    def __iter__(self):
        yield "small", self.small
        yield "big", self.big
        yield "medium", self.medium
        yield "biggish", self.biggish
        yield "tiny", self.tiny

cdef class MyStruct_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.MyStruct

    def __iter__(self):
        yield "MyIntField", self.MyIntField
        yield "MyStringField", self.MyStringField
        yield "majorVer", self.majorVer
        yield "data", self.data

cdef class MyDataItem_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.MyDataItem

    def __iter__(self):
        pass

cdef class Renaming_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.Renaming

    def __iter__(self):
        yield "foo", self.foo

cdef class AnnotatedTypes_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.AnnotatedTypes

    def __iter__(self):
        yield "binary_field", self.binary_field
        yield "list_field", self.list_field

cdef class ForwardUsageRoot_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.ForwardUsageRoot

    def __iter__(self):
        yield "ForwardUsageStruct", self.ForwardUsageStruct
        yield "ForwardUsageByRef", self.ForwardUsageByRef

cdef class ForwardUsageStruct_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.ForwardUsageStruct

    def __iter__(self):
        yield "foo", self.foo

cdef class ForwardUsageByRef_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.ForwardUsageByRef

    def __iter__(self):
        yield "foo", self.foo

cdef class NoexceptMoveEmpty_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.NoexceptMoveEmpty

    def __iter__(self):
        pass

cdef class NoexceptMoveSimpleStruct_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.NoexceptMoveSimpleStruct

    def __iter__(self):
        yield "boolField", self.boolField

cdef class NoexceptMoveComplexStruct_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.NoexceptMoveComplexStruct

    def __iter__(self):
        yield "MyBoolField", self.MyBoolField
        yield "MyIntField", self.MyIntField
        yield "MyStringField", self.MyStringField
        yield "MyStringField2", self.MyStringField2
        yield "MyBinaryField", self.MyBinaryField
        yield "MyBinaryField2", self.MyBinaryField2
        yield "MyBinaryField3", self.MyBinaryField3
        yield "MyBinaryListField4", self.MyBinaryListField4
        yield "MyMapEnumAndInt", self.MyMapEnumAndInt

cdef class NoExceptMoveUnion_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.NoExceptMoveUnion

    def __iter__(self):
        yield "string_field", self.string_field
        yield "i32_field", self.i32_field

cdef class AllocatorAware_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.AllocatorAware

    def __iter__(self):
        yield "aa_list", self.aa_list
        yield "aa_set", self.aa_set
        yield "aa_map", self.aa_map
        yield "aa_string", self.aa_string
        yield "not_a_container", self.not_a_container
        yield "aa_unique", self.aa_unique
        yield "aa_shared", self.aa_shared

cdef class AllocatorAware2_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.AllocatorAware2

    def __iter__(self):
        yield "not_a_container", self.not_a_container

cdef class TypedefStruct_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.TypedefStruct

    def __iter__(self):
        yield "i32_field", self.i32_field
        yield "IntTypedef_field", self.IntTypedef_field
        yield "UintTypedef_field", self.UintTypedef_field

cdef class StructWithDoubleUnderscores_Builder(thrift.py3.builder.StructBuilder):
    _struct_type = _module_types.StructWithDoubleUnderscores

    def __iter__(self):
        yield "__field", self.__field

