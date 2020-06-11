#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#


import folly.iobuf as __iobuf

from thrift.py3.reflection cimport (
    NumberType as __NumberType,
    StructType as __StructType,
    Qualifier as __Qualifier,
)


cimport module.types as _module_types

from thrift.py3.types cimport (
    constant_shared_ptr,
    default_inst,
)


cdef __StructSpec get_reflection__MyStruct():
    cdef _module_types.MyStruct defaults = _module_types.MyStruct.create(
        constant_shared_ptr[_module_types.cMyStruct](
            default_inst[_module_types.cMyStruct]()
        )
    )
    return __StructSpec.create(
        name="MyStruct",
        kind=__StructType.STRUCT,
        fields=(
            __FieldSpec.create(
                name="MyIntField",
                type=int,
                kind=__NumberType.I64,
                qualifier=__Qualifier.UNQUALIFIED,
                default=None,
                annotations={
                },
            ),
            __FieldSpec.create(
                name="MyStringField",
                type=str,
                kind=__NumberType.NOT_A_NUMBER,
                qualifier=__Qualifier.UNQUALIFIED,
                default=None,
                annotations={
                },
            ),
            __FieldSpec.create(
                name="MyDataField",
                type=_module_types.MyDataItem,
                kind=__NumberType.NOT_A_NUMBER,
                qualifier=__Qualifier.UNQUALIFIED,
                default=None,
                annotations={
                },
            ),
            __FieldSpec.create(
                name="myEnum",
                type=_module_types.MyEnum,
                kind=__NumberType.NOT_A_NUMBER,
                qualifier=__Qualifier.UNQUALIFIED,
                default=None,
                annotations={
                },
            ),
        ),
        annotations={
        },
    )

cdef __StructSpec get_reflection__MyDataItem():
    cdef _module_types.MyDataItem defaults = _module_types.MyDataItem.create(
        constant_shared_ptr[_module_types.cMyDataItem](
            default_inst[_module_types.cMyDataItem]()
        )
    )
    return __StructSpec.create(
        name="MyDataItem",
        kind=__StructType.STRUCT,
        fields=(
        ),
        annotations={
        },
    )

cdef __StructSpec get_reflection__MyUnion():
    return __StructSpec.create(
        name="MyUnion",
        kind=__StructType.UNION,
        fields=(
            __FieldSpec.create(
                name="myEnum",
                type=_module_types.MyEnum,
                kind=__NumberType.NOT_A_NUMBER,
                qualifier=__Qualifier.UNQUALIFIED,
                default=None,
                annotations={
                },
            ),
            __FieldSpec.create(
                name="myStruct",
                type=_module_types.MyStruct,
                kind=__NumberType.NOT_A_NUMBER,
                qualifier=__Qualifier.UNQUALIFIED,
                default=None,
                annotations={
                },
            ),
            __FieldSpec.create(
                name="myDataItem",
                type=_module_types.MyDataItem,
                kind=__NumberType.NOT_A_NUMBER,
                qualifier=__Qualifier.UNQUALIFIED,
                default=None,
                annotations={
                },
            ),
        ),
        annotations={
        },
    )

