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

cimport transitive.types_reflection as _types_reflection



@__cython.auto_pickle(False)
cdef class Foo(thrift.py3.types.Struct):

    def __init__(
        Foo self, *,
        a=None
    ):
        if a is not None:
            if not isinstance(a, int):
                raise TypeError(f'a is not a { int !r}.')
            a = <cint64_t> a

        self._cpp_obj = __to_shared_ptr(cmove(Foo._make_instance(
          NULL,
          NULL,
          a,
        )))

    def __call__(
        Foo self,
        a=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[1] __isNOTSET  # so make_instance is typed

        __fbthrift_changed = False
        if a is ___NOTSET:
            __isNOTSET[0] = True
            a = None
        else:
            __isNOTSET[0] = False
            __fbthrift_changed = True


        if not __fbthrift_changed:
            return self

        if a is not None:
            if not isinstance(a, int):
                raise TypeError(f'a is not a { int !r}.')
            a = <cint64_t> a

        __fbthrift_inst = <Foo>Foo.__new__(Foo)
        __fbthrift_inst._cpp_obj = __to_shared_ptr(cmove(Foo._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          a,
        )))
        return __fbthrift_inst

    @staticmethod
    cdef unique_ptr[cFoo] _make_instance(
        cFoo* base_instance,
        bint* __isNOTSET,
        object a 
    ) except *:
        cdef unique_ptr[cFoo] c_inst
        if base_instance:
            c_inst = make_unique[cFoo](deref(base_instance))
        else:
            c_inst = make_unique[cFoo]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and a is None:
                deref(c_inst).a_ref().assign(default_inst[cFoo]().a_ref().value())
                deref(c_inst).__isset.a = False
                pass

        if a is not None:
            deref(c_inst).a_ref().assign(a)
            deref(c_inst).__isset.a = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return cmove(c_inst)

    cdef object __fbthrift_isset(self):
        return thrift.py3.types._IsSet("Foo", {
          "a": deref(self._cpp_obj).a_ref().has_value(),
        })

    def __iter__(self):
        yield 'a', self.a

    @staticmethod
    cdef create(shared_ptr[cFoo] cpp_obj):
        __fbthrift_inst = <Foo>Foo.__new__(Foo)
        __fbthrift_inst._cpp_obj = cmove(cpp_obj)
        return __fbthrift_inst

    @property
    def a(self):

        return deref(self._cpp_obj).a_ref().value()


    def __hash__(Foo self):
        return  super().__hash__()

    def __copy__(Foo self):
        cdef shared_ptr[cFoo] cpp_obj = make_shared[cFoo](
            deref(self._cpp_obj)
        )
        return Foo.create(cmove(cpp_obj))

    def __richcmp__(self, other, int op):
        r = self.__cmp_sametype(other, op)
        return __richcmp[cFoo](
            self._cpp_obj,
            (<Foo>other)._cpp_obj,
            op,
        ) if r is None else r

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__Foo()

    cdef __iobuf.IOBuf _serialize(Foo self, __Protocol proto):
        cdef unique_ptr[__iobuf.cIOBuf] data
        with nogil:
            data = cmove(serializer.cserialize[cFoo](self._cpp_obj.get(), proto))
        return __iobuf.from_unique_ptr(cmove(data))

    cdef cuint32_t _deserialize(Foo self, const __iobuf.cIOBuf* buf, __Protocol proto) except? 0:
        cdef cuint32_t needed
        self._cpp_obj = make_shared[cFoo]()
        with nogil:
            needed = serializer.cdeserialize[cFoo](buf, self._cpp_obj.get(), proto)
        return needed


ExampleFoo = Foo.create(constant_shared_ptr(cExampleFoo()))
