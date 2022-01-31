#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
from cpython cimport bool as pbool, int as pint, float as pfloat

cimport folly.iobuf as _fbthrift_iobuf

cimport thrift.py3.builder

cimport include.types as _include_types
cimport include.builders as _include_builders

cimport module.types as _module_types

cdef class decorated_struct_Builder(thrift.py3.builder.StructBuilder):
    cdef public str field


cdef class ContainerStruct_Builder(thrift.py3.builder.StructBuilder):
    cdef public list fieldA
    cdef public list fieldB
    cdef public list fieldC
    cdef public list fieldD
    cdef public list fieldE
    cdef public set fieldF
    cdef public dict fieldG
    cdef public dict fieldH


cdef class CppTypeStruct_Builder(thrift.py3.builder.StructBuilder):
    cdef public list fieldA


cdef class VirtualStruct_Builder(thrift.py3.builder.StructBuilder):
    cdef public pint MyIntField


cdef class MyStructWithForwardRefEnum_Builder(thrift.py3.builder.StructBuilder):
    cdef public _module_types.MyForwardRefEnum a
    cdef public _module_types.MyForwardRefEnum b


cdef class TrivialNumeric_Builder(thrift.py3.builder.StructBuilder):
    cdef public pint a
    cdef public pbool b


cdef class TrivialNestedWithDefault_Builder(thrift.py3.builder.StructBuilder):
    cdef public pint z
    cdef public object n


cdef class ComplexString_Builder(thrift.py3.builder.StructBuilder):
    cdef public str a
    cdef public dict b


cdef class ComplexNestedWithDefault_Builder(thrift.py3.builder.StructBuilder):
    cdef public str z
    cdef public object n


cdef class MinPadding_Builder(thrift.py3.builder.StructBuilder):
    cdef public pint small
    cdef public pint big
    cdef public pint medium
    cdef public pint biggish
    cdef public pint tiny


cdef class MyStruct_Builder(thrift.py3.builder.StructBuilder):
    cdef public pint MyIntField
    cdef public str MyStringField
    cdef public pint majorVer
    cdef public object data


cdef class MyDataItem_Builder(thrift.py3.builder.StructBuilder):
    pass


cdef class Renaming_Builder(thrift.py3.builder.StructBuilder):
    cdef public pint foo "bar"


cdef class AnnotatedTypes_Builder(thrift.py3.builder.StructBuilder):
    cdef public bytes binary_field
    cdef public list list_field


cdef class ForwardUsageRoot_Builder(thrift.py3.builder.StructBuilder):
    cdef public object ForwardUsageStruct
    cdef public object ForwardUsageByRef


cdef class ForwardUsageStruct_Builder(thrift.py3.builder.StructBuilder):
    cdef public object foo


cdef class ForwardUsageByRef_Builder(thrift.py3.builder.StructBuilder):
    cdef public object foo


cdef class NoexceptMoveEmpty_Builder(thrift.py3.builder.StructBuilder):
    pass


cdef class NoexceptMoveSimpleStruct_Builder(thrift.py3.builder.StructBuilder):
    cdef public pint boolField


cdef class NoexceptMoveComplexStruct_Builder(thrift.py3.builder.StructBuilder):
    cdef public pbool MyBoolField
    cdef public pint MyIntField
    cdef public str MyStringField
    cdef public str MyStringField2
    cdef public bytes MyBinaryField
    cdef public bytes MyBinaryField2
    cdef public bytes MyBinaryField3
    cdef public list MyBinaryListField4
    cdef public dict MyMapEnumAndInt


cdef class NoExceptMoveUnion_Builder(thrift.py3.builder.StructBuilder):
    cdef public str string_field
    cdef public pint i32_field


cdef class AllocatorAware_Builder(thrift.py3.builder.StructBuilder):
    cdef public list aa_list
    cdef public set aa_set
    cdef public dict aa_map
    cdef public str aa_string
    cdef public pint not_a_container
    cdef public pint aa_unique
    cdef public pint aa_shared


cdef class AllocatorAware2_Builder(thrift.py3.builder.StructBuilder):
    cdef public pint not_a_container


cdef class TypedefStruct_Builder(thrift.py3.builder.StructBuilder):
    cdef public pint i32_field
    cdef public pint IntTypedef_field
    cdef public pint UintTypedef_field


cdef class StructWithDoubleUnderscores_Builder(thrift.py3.builder.StructBuilder):
    cdef public pint __field


