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

cimport module.types_reflection as _types_reflection



@__cython.auto_pickle(False)
cdef class InitialResponse(thrift.py3.types.Struct):

    def __init__(
        InitialResponse self, *,
        str content=None
    ):
        self._cpp_obj = __to_shared_ptr(cmove(InitialResponse._make_instance(
          NULL,
          NULL,
          content,
        )))

    def __call__(
        InitialResponse self,
        content=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[1] __isNOTSET  # so make_instance is typed

        __fbthrift_changed = False
        if content is ___NOTSET:
            __isNOTSET[0] = True
            content = None
        else:
            __isNOTSET[0] = False
            __fbthrift_changed = True


        if not __fbthrift_changed:
            return self

        if content is not None:
            if not isinstance(content, str):
                raise TypeError(f'content is not a { str !r}.')

        __fbthrift_inst = <InitialResponse>InitialResponse.__new__(InitialResponse)
        __fbthrift_inst._cpp_obj = __to_shared_ptr(cmove(InitialResponse._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          content,
        )))
        return __fbthrift_inst

    @staticmethod
    cdef unique_ptr[cInitialResponse] _make_instance(
        cInitialResponse* base_instance,
        bint* __isNOTSET,
        str content 
    ) except *:
        cdef unique_ptr[cInitialResponse] c_inst
        if base_instance:
            c_inst = make_unique[cInitialResponse](deref(base_instance))
        else:
            c_inst = make_unique[cInitialResponse]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and content is None:
                deref(c_inst).content_ref().assign(default_inst[cInitialResponse]().content_ref().value())
                deref(c_inst).__isset.content = False
                pass

        if content is not None:
            deref(c_inst).content_ref().assign(cmove(thrift.py3.types.bytes_to_string(content.encode('utf-8'))))
            deref(c_inst).__isset.content = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return cmove(c_inst)

    cdef object __fbthrift_isset(self):
        return thrift.py3.types._IsSet("InitialResponse", {
          "content": deref(self._cpp_obj).content_ref().has_value(),
        })

    def __iter__(self):
        yield 'content', self.content

    @staticmethod
    cdef create(shared_ptr[cInitialResponse] cpp_obj):
        __fbthrift_inst = <InitialResponse>InitialResponse.__new__(InitialResponse)
        __fbthrift_inst._cpp_obj = cmove(cpp_obj)
        return __fbthrift_inst

    @property
    def content(self):

        return (<bytes>deref(self._cpp_obj).content_ref().value()).decode('UTF-8')


    def __hash__(InitialResponse self):
        return  super().__hash__()

    def __copy__(InitialResponse self):
        cdef shared_ptr[cInitialResponse] cpp_obj = make_shared[cInitialResponse](
            deref(self._cpp_obj)
        )
        return InitialResponse.create(cmove(cpp_obj))

    def __richcmp__(self, other, int op):
        r = self.__cmp_sametype(other, op)
        return __richcmp[cInitialResponse](
            self._cpp_obj,
            (<InitialResponse>other)._cpp_obj,
            op,
        ) if r is None else r

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__InitialResponse()

    cdef __iobuf.IOBuf _serialize(InitialResponse self, __Protocol proto):
        cdef unique_ptr[__iobuf.cIOBuf] data
        with nogil:
            data = cmove(serializer.cserialize[cInitialResponse](self._cpp_obj.get(), proto))
        return __iobuf.from_unique_ptr(cmove(data))

    cdef cuint32_t _deserialize(InitialResponse self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cInitialResponse]()
        with nogil:
            needed = serializer.cdeserialize[cInitialResponse](buf, self._cpp_obj.get(), proto)
        return needed


@__cython.auto_pickle(False)
cdef class FinalResponse(thrift.py3.types.Struct):

    def __init__(
        FinalResponse self, *,
        str content=None
    ):
        self._cpp_obj = __to_shared_ptr(cmove(FinalResponse._make_instance(
          NULL,
          NULL,
          content,
        )))

    def __call__(
        FinalResponse self,
        content=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[1] __isNOTSET  # so make_instance is typed

        __fbthrift_changed = False
        if content is ___NOTSET:
            __isNOTSET[0] = True
            content = None
        else:
            __isNOTSET[0] = False
            __fbthrift_changed = True


        if not __fbthrift_changed:
            return self

        if content is not None:
            if not isinstance(content, str):
                raise TypeError(f'content is not a { str !r}.')

        __fbthrift_inst = <FinalResponse>FinalResponse.__new__(FinalResponse)
        __fbthrift_inst._cpp_obj = __to_shared_ptr(cmove(FinalResponse._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          content,
        )))
        return __fbthrift_inst

    @staticmethod
    cdef unique_ptr[cFinalResponse] _make_instance(
        cFinalResponse* base_instance,
        bint* __isNOTSET,
        str content 
    ) except *:
        cdef unique_ptr[cFinalResponse] c_inst
        if base_instance:
            c_inst = make_unique[cFinalResponse](deref(base_instance))
        else:
            c_inst = make_unique[cFinalResponse]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and content is None:
                deref(c_inst).content_ref().assign(default_inst[cFinalResponse]().content_ref().value())
                deref(c_inst).__isset.content = False
                pass

        if content is not None:
            deref(c_inst).content_ref().assign(cmove(thrift.py3.types.bytes_to_string(content.encode('utf-8'))))
            deref(c_inst).__isset.content = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return cmove(c_inst)

    cdef object __fbthrift_isset(self):
        return thrift.py3.types._IsSet("FinalResponse", {
          "content": deref(self._cpp_obj).content_ref().has_value(),
        })

    def __iter__(self):
        yield 'content', self.content

    @staticmethod
    cdef create(shared_ptr[cFinalResponse] cpp_obj):
        __fbthrift_inst = <FinalResponse>FinalResponse.__new__(FinalResponse)
        __fbthrift_inst._cpp_obj = cmove(cpp_obj)
        return __fbthrift_inst

    @property
    def content(self):

        return (<bytes>deref(self._cpp_obj).content_ref().value()).decode('UTF-8')


    def __hash__(FinalResponse self):
        return  super().__hash__()

    def __copy__(FinalResponse self):
        cdef shared_ptr[cFinalResponse] cpp_obj = make_shared[cFinalResponse](
            deref(self._cpp_obj)
        )
        return FinalResponse.create(cmove(cpp_obj))

    def __richcmp__(self, other, int op):
        r = self.__cmp_sametype(other, op)
        return __richcmp[cFinalResponse](
            self._cpp_obj,
            (<FinalResponse>other)._cpp_obj,
            op,
        ) if r is None else r

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__FinalResponse()

    cdef __iobuf.IOBuf _serialize(FinalResponse self, __Protocol proto):
        cdef unique_ptr[__iobuf.cIOBuf] data
        with nogil:
            data = cmove(serializer.cserialize[cFinalResponse](self._cpp_obj.get(), proto))
        return __iobuf.from_unique_ptr(cmove(data))

    cdef cuint32_t _deserialize(FinalResponse self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cFinalResponse]()
        with nogil:
            needed = serializer.cdeserialize[cFinalResponse](buf, self._cpp_obj.get(), proto)
        return needed


@__cython.auto_pickle(False)
cdef class SinkPayload(thrift.py3.types.Struct):

    def __init__(
        SinkPayload self, *,
        str content=None
    ):
        self._cpp_obj = __to_shared_ptr(cmove(SinkPayload._make_instance(
          NULL,
          NULL,
          content,
        )))

    def __call__(
        SinkPayload self,
        content=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[1] __isNOTSET  # so make_instance is typed

        __fbthrift_changed = False
        if content is ___NOTSET:
            __isNOTSET[0] = True
            content = None
        else:
            __isNOTSET[0] = False
            __fbthrift_changed = True


        if not __fbthrift_changed:
            return self

        if content is not None:
            if not isinstance(content, str):
                raise TypeError(f'content is not a { str !r}.')

        __fbthrift_inst = <SinkPayload>SinkPayload.__new__(SinkPayload)
        __fbthrift_inst._cpp_obj = __to_shared_ptr(cmove(SinkPayload._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          content,
        )))
        return __fbthrift_inst

    @staticmethod
    cdef unique_ptr[cSinkPayload] _make_instance(
        cSinkPayload* base_instance,
        bint* __isNOTSET,
        str content 
    ) except *:
        cdef unique_ptr[cSinkPayload] c_inst
        if base_instance:
            c_inst = make_unique[cSinkPayload](deref(base_instance))
        else:
            c_inst = make_unique[cSinkPayload]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and content is None:
                deref(c_inst).content_ref().assign(default_inst[cSinkPayload]().content_ref().value())
                deref(c_inst).__isset.content = False
                pass

        if content is not None:
            deref(c_inst).content_ref().assign(cmove(thrift.py3.types.bytes_to_string(content.encode('utf-8'))))
            deref(c_inst).__isset.content = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return cmove(c_inst)

    cdef object __fbthrift_isset(self):
        return thrift.py3.types._IsSet("SinkPayload", {
          "content": deref(self._cpp_obj).content_ref().has_value(),
        })

    def __iter__(self):
        yield 'content', self.content

    @staticmethod
    cdef create(shared_ptr[cSinkPayload] cpp_obj):
        __fbthrift_inst = <SinkPayload>SinkPayload.__new__(SinkPayload)
        __fbthrift_inst._cpp_obj = cmove(cpp_obj)
        return __fbthrift_inst

    @property
    def content(self):

        return (<bytes>deref(self._cpp_obj).content_ref().value()).decode('UTF-8')


    def __hash__(SinkPayload self):
        return  super().__hash__()

    def __copy__(SinkPayload self):
        cdef shared_ptr[cSinkPayload] cpp_obj = make_shared[cSinkPayload](
            deref(self._cpp_obj)
        )
        return SinkPayload.create(cmove(cpp_obj))

    def __richcmp__(self, other, int op):
        r = self.__cmp_sametype(other, op)
        return __richcmp[cSinkPayload](
            self._cpp_obj,
            (<SinkPayload>other)._cpp_obj,
            op,
        ) if r is None else r

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__SinkPayload()

    cdef __iobuf.IOBuf _serialize(SinkPayload self, __Protocol proto):
        cdef unique_ptr[__iobuf.cIOBuf] data
        with nogil:
            data = cmove(serializer.cserialize[cSinkPayload](self._cpp_obj.get(), proto))
        return __iobuf.from_unique_ptr(cmove(data))

    cdef cuint32_t _deserialize(SinkPayload self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cSinkPayload]()
        with nogil:
            needed = serializer.cdeserialize[cSinkPayload](buf, self._cpp_obj.get(), proto)
        return needed


@__cython.auto_pickle(False)
cdef class CompatibleWithKeywordSink(thrift.py3.types.Struct):

    def __init__(
        CompatibleWithKeywordSink self, *,
        str sink=None
    ):
        self._cpp_obj = __to_shared_ptr(cmove(CompatibleWithKeywordSink._make_instance(
          NULL,
          NULL,
          sink,
        )))

    def __call__(
        CompatibleWithKeywordSink self,
        sink=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[1] __isNOTSET  # so make_instance is typed

        __fbthrift_changed = False
        if sink is ___NOTSET:
            __isNOTSET[0] = True
            sink = None
        else:
            __isNOTSET[0] = False
            __fbthrift_changed = True


        if not __fbthrift_changed:
            return self

        if sink is not None:
            if not isinstance(sink, str):
                raise TypeError(f'sink is not a { str !r}.')

        __fbthrift_inst = <CompatibleWithKeywordSink>CompatibleWithKeywordSink.__new__(CompatibleWithKeywordSink)
        __fbthrift_inst._cpp_obj = __to_shared_ptr(cmove(CompatibleWithKeywordSink._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          sink,
        )))
        return __fbthrift_inst

    @staticmethod
    cdef unique_ptr[cCompatibleWithKeywordSink] _make_instance(
        cCompatibleWithKeywordSink* base_instance,
        bint* __isNOTSET,
        str sink 
    ) except *:
        cdef unique_ptr[cCompatibleWithKeywordSink] c_inst
        if base_instance:
            c_inst = make_unique[cCompatibleWithKeywordSink](deref(base_instance))
        else:
            c_inst = make_unique[cCompatibleWithKeywordSink]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and sink is None:
                deref(c_inst).sink_ref().assign(default_inst[cCompatibleWithKeywordSink]().sink_ref().value())
                deref(c_inst).__isset.sink = False
                pass

        if sink is not None:
            deref(c_inst).sink_ref().assign(cmove(thrift.py3.types.bytes_to_string(sink.encode('utf-8'))))
            deref(c_inst).__isset.sink = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return cmove(c_inst)

    cdef object __fbthrift_isset(self):
        return thrift.py3.types._IsSet("CompatibleWithKeywordSink", {
          "sink": deref(self._cpp_obj).sink_ref().has_value(),
        })

    def __iter__(self):
        yield 'sink', self.sink

    @staticmethod
    cdef create(shared_ptr[cCompatibleWithKeywordSink] cpp_obj):
        __fbthrift_inst = <CompatibleWithKeywordSink>CompatibleWithKeywordSink.__new__(CompatibleWithKeywordSink)
        __fbthrift_inst._cpp_obj = cmove(cpp_obj)
        return __fbthrift_inst

    @property
    def sink(self):

        return (<bytes>deref(self._cpp_obj).sink_ref().value()).decode('UTF-8')


    def __hash__(CompatibleWithKeywordSink self):
        return  super().__hash__()

    def __copy__(CompatibleWithKeywordSink self):
        cdef shared_ptr[cCompatibleWithKeywordSink] cpp_obj = make_shared[cCompatibleWithKeywordSink](
            deref(self._cpp_obj)
        )
        return CompatibleWithKeywordSink.create(cmove(cpp_obj))

    def __richcmp__(self, other, int op):
        r = self.__cmp_sametype(other, op)
        return __richcmp[cCompatibleWithKeywordSink](
            self._cpp_obj,
            (<CompatibleWithKeywordSink>other)._cpp_obj,
            op,
        ) if r is None else r

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__CompatibleWithKeywordSink()

    cdef __iobuf.IOBuf _serialize(CompatibleWithKeywordSink self, __Protocol proto):
        cdef unique_ptr[__iobuf.cIOBuf] data
        with nogil:
            data = cmove(serializer.cserialize[cCompatibleWithKeywordSink](self._cpp_obj.get(), proto))
        return __iobuf.from_unique_ptr(cmove(data))

    cdef cuint32_t _deserialize(CompatibleWithKeywordSink self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cCompatibleWithKeywordSink]()
        with nogil:
            needed = serializer.cdeserialize[cCompatibleWithKeywordSink](buf, self._cpp_obj.get(), proto)
        return needed


@__cython.auto_pickle(False)
cdef class InitialException(thrift.py3.exceptions.GeneratedError):

    def __init__(
        InitialException self,
        str reason=None
    ):
        self._cpp_obj = __to_shared_ptr(cmove(InitialException._make_instance(
          NULL,
          NULL,
          reason,
        )))
        _builtins.Exception.__init__(self, self.reason)


    @staticmethod
    cdef unique_ptr[cInitialException] _make_instance(
        cInitialException* base_instance,
        bint* __isNOTSET,
        str reason 
    ) except *:
        cdef unique_ptr[cInitialException] c_inst
        if base_instance:
            c_inst = make_unique[cInitialException](deref(base_instance))
        else:
            c_inst = make_unique[cInitialException]()

        if reason is not None:
            deref(c_inst).reason_ref().assign(cmove(thrift.py3.types.bytes_to_string(reason.encode('utf-8'))))
            deref(c_inst).__isset.reason = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return cmove(c_inst)

    cdef object __fbthrift_isset(self):
        return thrift.py3.types._IsSet("InitialException", {
          "reason": deref(self._cpp_obj).reason_ref().has_value(),
        })

    def __iter__(self):
        yield 'reason', self.reason

    @staticmethod
    cdef create(shared_ptr[cInitialException] cpp_obj):
        __fbthrift_inst = <InitialException>InitialException.__new__(InitialException, (<bytes>deref(cpp_obj).what()).decode('utf-8'))
        __fbthrift_inst._cpp_obj = cmove(cpp_obj)
        _builtins.Exception.__init__(__fbthrift_inst, __fbthrift_inst.reason)
        return __fbthrift_inst

    @property
    def reason(self):

        return (<bytes>deref(self._cpp_obj).reason_ref().value()).decode('UTF-8')


    def __hash__(InitialException self):
        return  super().__hash__()

    def __copy__(InitialException self):
        cdef shared_ptr[cInitialException] cpp_obj = make_shared[cInitialException](
            deref(self._cpp_obj)
        )
        return InitialException.create(cmove(cpp_obj))

    def __richcmp__(self, other, int op):
        r = self.__cmp_sametype(other, op)
        return __richcmp[cInitialException](
            self._cpp_obj,
            (<InitialException>other)._cpp_obj,
            op,
        ) if r is None else r

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__InitialException()



@__cython.auto_pickle(False)
cdef class SinkException1(thrift.py3.exceptions.GeneratedError):

    def __init__(
        SinkException1 self,
        str reason=None
    ):
        self._cpp_obj = __to_shared_ptr(cmove(SinkException1._make_instance(
          NULL,
          NULL,
          reason,
        )))
        _builtins.Exception.__init__(self, self.reason)


    @staticmethod
    cdef unique_ptr[cSinkException1] _make_instance(
        cSinkException1* base_instance,
        bint* __isNOTSET,
        str reason 
    ) except *:
        cdef unique_ptr[cSinkException1] c_inst
        if base_instance:
            c_inst = make_unique[cSinkException1](deref(base_instance))
        else:
            c_inst = make_unique[cSinkException1]()

        if reason is not None:
            deref(c_inst).reason_ref().assign(cmove(thrift.py3.types.bytes_to_string(reason.encode('utf-8'))))
            deref(c_inst).__isset.reason = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return cmove(c_inst)

    cdef object __fbthrift_isset(self):
        return thrift.py3.types._IsSet("SinkException1", {
          "reason": deref(self._cpp_obj).reason_ref().has_value(),
        })

    def __iter__(self):
        yield 'reason', self.reason

    @staticmethod
    cdef create(shared_ptr[cSinkException1] cpp_obj):
        __fbthrift_inst = <SinkException1>SinkException1.__new__(SinkException1, (<bytes>deref(cpp_obj).what()).decode('utf-8'))
        __fbthrift_inst._cpp_obj = cmove(cpp_obj)
        _builtins.Exception.__init__(__fbthrift_inst, __fbthrift_inst.reason)
        return __fbthrift_inst

    @property
    def reason(self):

        return (<bytes>deref(self._cpp_obj).reason_ref().value()).decode('UTF-8')


    def __hash__(SinkException1 self):
        return  super().__hash__()

    def __copy__(SinkException1 self):
        cdef shared_ptr[cSinkException1] cpp_obj = make_shared[cSinkException1](
            deref(self._cpp_obj)
        )
        return SinkException1.create(cmove(cpp_obj))

    def __richcmp__(self, other, int op):
        r = self.__cmp_sametype(other, op)
        return __richcmp[cSinkException1](
            self._cpp_obj,
            (<SinkException1>other)._cpp_obj,
            op,
        ) if r is None else r

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__SinkException1()



@__cython.auto_pickle(False)
cdef class SinkException2(thrift.py3.exceptions.GeneratedError):

    def __init__(
        SinkException2 self,
        reason=None
    ):
        if reason is not None:
            if not isinstance(reason, int):
                raise TypeError(f'reason is not a { int !r}.')
            reason = <cint64_t> reason

        self._cpp_obj = __to_shared_ptr(cmove(SinkException2._make_instance(
          NULL,
          NULL,
          reason,
        )))
        _builtins.Exception.__init__(self, self.reason)


    @staticmethod
    cdef unique_ptr[cSinkException2] _make_instance(
        cSinkException2* base_instance,
        bint* __isNOTSET,
        object reason 
    ) except *:
        cdef unique_ptr[cSinkException2] c_inst
        if base_instance:
            c_inst = make_unique[cSinkException2](deref(base_instance))
        else:
            c_inst = make_unique[cSinkException2]()

        if reason is not None:
            deref(c_inst).reason_ref().assign(reason)
            deref(c_inst).__isset.reason = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return cmove(c_inst)

    cdef object __fbthrift_isset(self):
        return thrift.py3.types._IsSet("SinkException2", {
          "reason": deref(self._cpp_obj).reason_ref().has_value(),
        })

    def __iter__(self):
        yield 'reason', self.reason

    @staticmethod
    cdef create(shared_ptr[cSinkException2] cpp_obj):
        __fbthrift_inst = <SinkException2>SinkException2.__new__(SinkException2, (<bytes>deref(cpp_obj).what()).decode('utf-8'))
        __fbthrift_inst._cpp_obj = cmove(cpp_obj)
        _builtins.Exception.__init__(__fbthrift_inst, __fbthrift_inst.reason)
        return __fbthrift_inst

    @property
    def reason(self):

        return deref(self._cpp_obj).reason_ref().value()


    def __hash__(SinkException2 self):
        return  super().__hash__()

    def __copy__(SinkException2 self):
        cdef shared_ptr[cSinkException2] cpp_obj = make_shared[cSinkException2](
            deref(self._cpp_obj)
        )
        return SinkException2.create(cmove(cpp_obj))

    def __richcmp__(self, other, int op):
        r = self.__cmp_sametype(other, op)
        return __richcmp[cSinkException2](
            self._cpp_obj,
            (<SinkException2>other)._cpp_obj,
            op,
        ) if r is None else r

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__SinkException2()



