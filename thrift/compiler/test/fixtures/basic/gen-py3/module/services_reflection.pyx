#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from thrift.py3.reflection cimport (
  MethodSpec as __MethodSpec,
  ArgumentSpec as __ArgumentSpec,
  NumberType as __NumberType,
)

import folly.iobuf as __iobuf


cimport module.types as _module_types


cdef __InterfaceSpec get_reflection__MyService(bint for_clients):
    return __InterfaceSpec.create(
        name="MyService",
        methods=(
            __MethodSpec.create(
                name="ping",
                arguments=(
                ),
                result=None,
                result_kind=__NumberType.NOT_A_NUMBER,
                exceptions=(
                ),
                annotations={
                },
            ),
            __MethodSpec.create(
                name="getRandomData",
                arguments=(
                ),
                result=str,
                result_kind=__NumberType.NOT_A_NUMBER,
                exceptions=(
                ),
                annotations={
                },
            ),
            __MethodSpec.create(
                name="hasDataById",
                arguments=(
                    __ArgumentSpec.create(
                        name="id",
                        type=int,
                        kind=__NumberType.I64,
                        annotations={
                        },
                    ),
                ),
                result=bool,
                result_kind=__NumberType.NOT_A_NUMBER,
                exceptions=(
                ),
                annotations={
                },
            ),
            __MethodSpec.create(
                name="getDataById",
                arguments=(
                    __ArgumentSpec.create(
                        name="id",
                        type=int,
                        kind=__NumberType.I64,
                        annotations={
                        },
                    ),
                ),
                result=str,
                result_kind=__NumberType.NOT_A_NUMBER,
                exceptions=(
                ),
                annotations={
                },
            ),
            __MethodSpec.create(
                name="putDataById",
                arguments=(
                    __ArgumentSpec.create(
                        name="id",
                        type=int,
                        kind=__NumberType.I64,
                        annotations={
                        },
                    ),
                    __ArgumentSpec.create(
                        name="data",
                        type=str,
                        kind=__NumberType.NOT_A_NUMBER,
                        annotations={
                        },
                    ),
                ),
                result=None,
                result_kind=__NumberType.NOT_A_NUMBER,
                exceptions=(
                ),
                annotations={
                },
            ),
            __MethodSpec.create(
                name="lobDataById",
                arguments=(
                    __ArgumentSpec.create(
                        name="id",
                        type=int,
                        kind=__NumberType.I64,
                        annotations={
                        },
                    ),
                    __ArgumentSpec.create(
                        name="data",
                        type=str,
                        kind=__NumberType.NOT_A_NUMBER,
                        annotations={
                        },
                    ),
                ),
                result=None,
                result_kind=__NumberType.NOT_A_NUMBER,
                exceptions=(
                ),
                annotations={
                },
            ),
        ),
        annotations={
        },
    )
