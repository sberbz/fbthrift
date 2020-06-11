#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

cimport cython
from cpython.version cimport PY_VERSION_HEX
from libc.stdint cimport (
    int8_t as cint8_t,
    int16_t as cint16_t,
    int32_t as cint32_t,
    int64_t as cint64_t,
)
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap
from cython.operator cimport dereference as deref
from cpython.ref cimport PyObject
from thrift.py3.exceptions cimport (
    cTApplicationException,
    ApplicationError as __ApplicationError,
    cTApplicationExceptionType__UNKNOWN)
from thrift.py3.server cimport ServiceInterface, RequestContext, Cpp2RequestContext
from thrift.py3.server import RequestContext, pass_context
from folly cimport (
  cFollyPromise,
  cFollyUnit,
  c_unit
)
from thrift.py3.types cimport move

if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
    from thrift.py3.server cimport THRIFT_REQUEST_CONTEXT as __THRIFT_REQUEST_CONTEXT

cimport folly.futures
from folly.executor cimport get_executor
cimport folly.iobuf as __iobuf
import folly.iobuf as __iobuf
from folly.iobuf cimport move as move_iobuf

cimport module.types as _module_types
import module.types as _module_types
import include.types as _include_types
cimport include.types as _include_types

cimport module.services_reflection as _services_reflection

import asyncio
import functools
import sys
import traceback
import types as _py_types

from module.services_wrapper cimport cSomeServiceInterface


cdef extern from "<utility>" namespace "std":
    cdef cFollyPromise[unique_ptr[cmap[string,cint64_t]]] move_promise_cmap__binary_cint64_t "std::move"(
        cFollyPromise[unique_ptr[cmap[string,cint64_t]]])
    cdef cFollyPromise[unique_ptr[_module_types.std_unordered_map[cint32_t,string]]] move_promise__module_types_std_unordered_map__cint32_t_string "std::move"(
        cFollyPromise[unique_ptr[_module_types.std_unordered_map[cint32_t,string]]])

@cython.auto_pickle(False)
cdef class Promise_cmap__binary_cint64_t:
    cdef cFollyPromise[unique_ptr[cmap[string,cint64_t]]] cPromise

    @staticmethod
    cdef create(cFollyPromise[unique_ptr[cmap[string,cint64_t]]] cPromise):
        inst = <Promise_cmap__binary_cint64_t>Promise_cmap__binary_cint64_t.__new__(Promise_cmap__binary_cint64_t)
        inst.cPromise = move_promise_cmap__binary_cint64_t(cPromise)
        return inst

@cython.auto_pickle(False)
cdef class Promise__module_types_std_unordered_map__cint32_t_string:
    cdef cFollyPromise[unique_ptr[_module_types.std_unordered_map[cint32_t,string]]] cPromise

    @staticmethod
    cdef create(cFollyPromise[unique_ptr[_module_types.std_unordered_map[cint32_t,string]]] cPromise):
        inst = <Promise__module_types_std_unordered_map__cint32_t_string>Promise__module_types_std_unordered_map__cint32_t_string.__new__(Promise__module_types_std_unordered_map__cint32_t_string)
        inst.cPromise = move_promise__module_types_std_unordered_map__cint32_t_string(cPromise)
        return inst

cdef object _SomeService_annotations = _py_types.MappingProxyType({
})


@cython.auto_pickle(False)
cdef class SomeServiceInterface(
    ServiceInterface
):
    annotations = _SomeService_annotations

    def __cinit__(self):
        self._cpp_obj = cSomeServiceInterface(
            <PyObject *> self,
            get_executor()
        )

    @staticmethod
    def pass_context_bounce_map(fn):
        return pass_context(fn)

    async def bounce_map(
            self,
            m):
        raise NotImplementedError("async def bounce_map is not implemented")

    @staticmethod
    def pass_context_binary_keyed_map(fn):
        return pass_context(fn)

    async def binary_keyed_map(
            self,
            r):
        raise NotImplementedError("async def binary_keyed_map is not implemented")

    @classmethod
    def __get_reflection__(cls):
        return _services_reflection.get_reflection__SomeService(for_clients=False)



cdef api void call_cy_SomeService_bounce_map(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[unique_ptr[_module_types.std_unordered_map[cint32_t,string]]] cPromise,
    unique_ptr[_module_types.std_unordered_map[cint32_t,string]] m
):
    __promise = Promise__module_types_std_unordered_map__cint32_t_string.create(move_promise__module_types_std_unordered_map__cint32_t_string(cPromise))
    arg_m = _module_types.std_unordered_map__Map__i32_string.create(_module_types.move(m))
    __context = RequestContext.create(ctx)
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context)
        __context = None
    asyncio.get_event_loop().create_task(
        SomeService_bounce_map_coro(
            self,
            __context,
            __promise,
            arg_m
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def SomeService_bounce_map_coro(
    object self,
    object ctx,
    Promise__module_types_std_unordered_map__cint32_t_string promise,
    m
):
    try:
        if ctx and getattr(self.bounce_map, "pass_context", False):
            result = await self.bounce_map(ctx,
                      m)
        else:
            result = await self.bounce_map(
                      m)
        result = _module_types.std_unordered_map__Map__i32_string(result)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler bounce_map:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(make_unique[_module_types.std_unordered_map[cint32_t,string]](deref((<_module_types.std_unordered_map__Map__i32_string?> result)._cpp_obj)))

cdef api void call_cy_SomeService_binary_keyed_map(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[unique_ptr[cmap[string,cint64_t]]] cPromise,
    unique_ptr[vector[cint64_t]] r
):
    __promise = Promise_cmap__binary_cint64_t.create(move_promise_cmap__binary_cint64_t(cPromise))
    arg_r = _module_types.List__i64.create(_module_types.move(r))
    __context = RequestContext.create(ctx)
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context)
        __context = None
    asyncio.get_event_loop().create_task(
        SomeService_binary_keyed_map_coro(
            self,
            __context,
            __promise,
            arg_r
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def SomeService_binary_keyed_map_coro(
    object self,
    object ctx,
    Promise_cmap__binary_cint64_t promise,
    r
):
    try:
        if ctx and getattr(self.binary_keyed_map, "pass_context", False):
            result = await self.binary_keyed_map(ctx,
                      r)
        else:
            result = await self.binary_keyed_map(
                      r)
        result = _module_types.Map__binary_i64(result)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler binary_keyed_map:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(make_unique[cmap[string,cint64_t]](deref((<_module_types.Map__binary_i64?> result)._cpp_obj)))

