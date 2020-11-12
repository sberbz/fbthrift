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
cdef class List__i32(thrift.py3.types.List):
    def __init__(self, items=None):
        if isinstance(items, List__i32):
            self._cpp_obj = (<List__i32> items)._cpp_obj
        else:
            self._cpp_obj = List__i32._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[vector[cint32_t]] c_items):
        __fbthrift_inst = <List__i32>List__i32.__new__(List__i32)
        __fbthrift_inst._cpp_obj = cmove(c_items)
        return __fbthrift_inst

    def __copy__(List__i32 self):
        cdef shared_ptr[vector[cint32_t]] cpp_obj = make_shared[vector[cint32_t]](
            deref(self._cpp_obj)
        )
        return List__i32.create(cmove(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[vector[cint32_t]] _make_instance(object items) except *:
        cdef shared_ptr[vector[cint32_t]] c_inst = make_shared[vector[cint32_t]]()
        if items is not None:
            for item in items:
                if not isinstance(item, int):
                    raise TypeError(f"{item!r} is not of type int")
                item = <cint32_t> item
                deref(c_inst).push_back(item)
        return c_inst

    cdef _get_slice(self, slice index_obj):
        cdef int start, stop, step
        start, stop, step = index_obj.indices(deref(self._cpp_obj).size())
        return List__i32.create(
            __list_slice[vector[cint32_t]](self._cpp_obj, start, stop, step)
        )

    cdef _get_single_item(self, size_t index):
        cdef cint32_t citem = 0
        __list_getitem(self._cpp_obj, index, citem)
        return citem

    cdef _check_item_type(self, item):
        if not self or item is None:
            return
        if isinstance(item, int):
            return item

    def index(self, item, start=0, stop=None):
        err = ValueError(f'{item} is not in list')
        item = self._check_item_type(item)
        if item is None:
            raise err
        cdef (int, int, int) indices = slice(start, stop).indices(deref(self._cpp_obj).size())
        cdef cint32_t citem = item
        cdef std_libcpp.optional[size_t] found = __list_index[vector[cint32_t]](self._cpp_obj, indices[0], indices[1], citem)
        if not found.has_value():
            raise err
        return found.value()

    def count(self, item):
        item = self._check_item_type(item)
        if item is None:
            return 0
        cdef cint32_t citem = item
        return __list_count[vector[cint32_t]](self._cpp_obj, citem)

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__List__i32()


Sequence.register(List__i32)

@__cython.auto_pickle(False)
cdef class Map__i32_List__i32(thrift.py3.types.Map):
    def __init__(self, items=None):
        if isinstance(items, Map__i32_List__i32):
            self._cpp_obj = (<Map__i32_List__i32> items)._cpp_obj
        else:
            self._cpp_obj = Map__i32_List__i32._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[cmap[cint32_t,vector[cint32_t]]] c_items):
        __fbthrift_inst = <Map__i32_List__i32>Map__i32_List__i32.__new__(Map__i32_List__i32)
        __fbthrift_inst._cpp_obj = cmove(c_items)
        return __fbthrift_inst

    def __copy__(Map__i32_List__i32 self):
        cdef shared_ptr[cmap[cint32_t,vector[cint32_t]]] cpp_obj = make_shared[cmap[cint32_t,vector[cint32_t]]](
            deref(self._cpp_obj)
        )
        return Map__i32_List__i32.create(cmove(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[cmap[cint32_t,vector[cint32_t]]] _make_instance(object items) except *:
        cdef shared_ptr[cmap[cint32_t,vector[cint32_t]]] c_inst = make_shared[cmap[cint32_t,vector[cint32_t]]]()
        if items is not None:
            for key, item in items.items():
                if not isinstance(key, int):
                    raise TypeError(f"{key!r} is not of type int")
                key = <cint32_t> key
                if item is None:
                    raise TypeError("None is not of type _typing.Sequence[int]")
                if not isinstance(item, List__i32):
                    item = List__i32(item)

                deref(c_inst)[key] = deref((<List__i32>item)._cpp_obj)
        return c_inst

    cdef _check_key_type(self, key):
        if not self or key is None:
            return
        if isinstance(key, int):
            return key

    def __getitem__(self, key):
        err = KeyError(f'{key}')
        key = self._check_key_type(key)
        if key is None:
            raise err
        cdef cint32_t ckey = key
        if not __map_contains(self._cpp_obj, ckey):
            raise err
        cdef shared_ptr[vector[cint32_t]] citem
        __map_getitem(self._cpp_obj, ckey, citem)
        return List__i32.create(citem)

    def __iter__(self):
        if not self:
            return
        cdef __map_iter[cmap[cint32_t,vector[cint32_t]]] itr = __map_iter[cmap[cint32_t,vector[cint32_t]]](self._cpp_obj)
        cdef cint32_t citem = 0
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextKey(self._cpp_obj, citem)
            yield citem

    def __contains__(self, key):
        key = self._check_key_type(key)
        if key is None:
            return False
        cdef cint32_t ckey = key
        return __map_contains(self._cpp_obj, ckey)

    def values(self):
        if not self:
            return
        cdef __map_iter[cmap[cint32_t,vector[cint32_t]]] itr = __map_iter[cmap[cint32_t,vector[cint32_t]]](self._cpp_obj)
        cdef shared_ptr[vector[cint32_t]] citem
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextValue(self._cpp_obj, citem)
            yield List__i32.create(citem)

    def items(self):
        if not self:
            return
        cdef __map_iter[cmap[cint32_t,vector[cint32_t]]] itr = __map_iter[cmap[cint32_t,vector[cint32_t]]](self._cpp_obj)
        cdef cint32_t ckey = 0
        cdef shared_ptr[vector[cint32_t]] citem
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextItem(self._cpp_obj, ckey, citem)
            yield (ckey, List__i32.create(citem))

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__Map__i32_List__i32()


Mapping.register(Map__i32_List__i32)

@__cython.auto_pickle(False)
cdef class Set__i32(thrift.py3.types.Set):
    def __init__(self, items=None):
        if isinstance(items, Set__i32):
            self._cpp_obj = (<Set__i32> items)._cpp_obj
        else:
            self._cpp_obj = Set__i32._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[cset[cint32_t]] c_items):
        __fbthrift_inst = <Set__i32>Set__i32.__new__(Set__i32)
        __fbthrift_inst._cpp_obj = cmove(c_items)
        return __fbthrift_inst

    def __copy__(Set__i32 self):
        cdef shared_ptr[cset[cint32_t]] cpp_obj = make_shared[cset[cint32_t]](
            deref(self._cpp_obj)
        )
        return Set__i32.create(cmove(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[cset[cint32_t]] _make_instance(object items) except *:
        cdef shared_ptr[cset[cint32_t]] c_inst = make_shared[cset[cint32_t]]()
        if items is not None:
            for item in items:
                if not isinstance(item, int):
                    raise TypeError(f"{item!r} is not of type int")
                item = <cint32_t> item
                deref(c_inst).insert(item)
        return c_inst

    def __contains__(self, item):
        if not self or item is None:
            return False
        if not isinstance(item, int):
            return False
        return pbool(deref(self._cpp_obj).count(item))


    def __iter__(self):
        if not self:
            return
        cdef __set_iter[cset[cint32_t]] itr = __set_iter[cset[cint32_t]](self._cpp_obj)
        cdef cint32_t citem = 0
        for i in range(deref(self._cpp_obj).size()):
            itr.genNext(self._cpp_obj, citem)
            yield citem

    def __hash__(self):
        return super().__hash__()

    def __richcmp__(self, other, int op):
        if isinstance(other, Set__i32):
            # C level comparisons
            return __setcmp(
                self._cpp_obj,
                (<Set__i32> other)._cpp_obj,
                op,
            )
        return self.__py_richcmp(other, op)

    cdef __do_set_op(self, other, __cSetOp op):
        if not isinstance(other, Set__i32):
            other = Set__i32(other)
        cdef shared_ptr[cset[cint32_t]] result
        return Set__i32.create(__set_op[cset[cint32_t]](
            self._cpp_obj,
            (<Set__i32>other)._cpp_obj,
            op,
        ))

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__Set__i32()


Set.register(Set__i32)

@__cython.auto_pickle(False)
cdef class Map__i32_Set__i32(thrift.py3.types.Map):
    def __init__(self, items=None):
        if isinstance(items, Map__i32_Set__i32):
            self._cpp_obj = (<Map__i32_Set__i32> items)._cpp_obj
        else:
            self._cpp_obj = Map__i32_Set__i32._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[cmap[cint32_t,cset[cint32_t]]] c_items):
        __fbthrift_inst = <Map__i32_Set__i32>Map__i32_Set__i32.__new__(Map__i32_Set__i32)
        __fbthrift_inst._cpp_obj = cmove(c_items)
        return __fbthrift_inst

    def __copy__(Map__i32_Set__i32 self):
        cdef shared_ptr[cmap[cint32_t,cset[cint32_t]]] cpp_obj = make_shared[cmap[cint32_t,cset[cint32_t]]](
            deref(self._cpp_obj)
        )
        return Map__i32_Set__i32.create(cmove(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[cmap[cint32_t,cset[cint32_t]]] _make_instance(object items) except *:
        cdef shared_ptr[cmap[cint32_t,cset[cint32_t]]] c_inst = make_shared[cmap[cint32_t,cset[cint32_t]]]()
        if items is not None:
            for key, item in items.items():
                if not isinstance(key, int):
                    raise TypeError(f"{key!r} is not of type int")
                key = <cint32_t> key
                if item is None:
                    raise TypeError("None is not of type _typing.AbstractSet[int]")
                if not isinstance(item, Set__i32):
                    item = Set__i32(item)

                deref(c_inst)[key] = deref((<Set__i32>item)._cpp_obj)
        return c_inst

    cdef _check_key_type(self, key):
        if not self or key is None:
            return
        if isinstance(key, int):
            return key

    def __getitem__(self, key):
        err = KeyError(f'{key}')
        key = self._check_key_type(key)
        if key is None:
            raise err
        cdef cint32_t ckey = key
        if not __map_contains(self._cpp_obj, ckey):
            raise err
        cdef shared_ptr[cset[cint32_t]] citem
        __map_getitem(self._cpp_obj, ckey, citem)
        return Set__i32.create(citem)

    def __iter__(self):
        if not self:
            return
        cdef __map_iter[cmap[cint32_t,cset[cint32_t]]] itr = __map_iter[cmap[cint32_t,cset[cint32_t]]](self._cpp_obj)
        cdef cint32_t citem = 0
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextKey(self._cpp_obj, citem)
            yield citem

    def __contains__(self, key):
        key = self._check_key_type(key)
        if key is None:
            return False
        cdef cint32_t ckey = key
        return __map_contains(self._cpp_obj, ckey)

    def values(self):
        if not self:
            return
        cdef __map_iter[cmap[cint32_t,cset[cint32_t]]] itr = __map_iter[cmap[cint32_t,cset[cint32_t]]](self._cpp_obj)
        cdef shared_ptr[cset[cint32_t]] citem
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextValue(self._cpp_obj, citem)
            yield Set__i32.create(citem)

    def items(self):
        if not self:
            return
        cdef __map_iter[cmap[cint32_t,cset[cint32_t]]] itr = __map_iter[cmap[cint32_t,cset[cint32_t]]](self._cpp_obj)
        cdef cint32_t ckey = 0
        cdef shared_ptr[cset[cint32_t]] citem
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextItem(self._cpp_obj, ckey, citem)
            yield (ckey, Set__i32.create(citem))

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__Map__i32_Set__i32()


Mapping.register(Map__i32_Set__i32)

@__cython.auto_pickle(False)
cdef class Map__i32_i32(thrift.py3.types.Map):
    def __init__(self, items=None):
        if isinstance(items, Map__i32_i32):
            self._cpp_obj = (<Map__i32_i32> items)._cpp_obj
        else:
            self._cpp_obj = Map__i32_i32._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[cmap[cint32_t,cint32_t]] c_items):
        __fbthrift_inst = <Map__i32_i32>Map__i32_i32.__new__(Map__i32_i32)
        __fbthrift_inst._cpp_obj = cmove(c_items)
        return __fbthrift_inst

    def __copy__(Map__i32_i32 self):
        cdef shared_ptr[cmap[cint32_t,cint32_t]] cpp_obj = make_shared[cmap[cint32_t,cint32_t]](
            deref(self._cpp_obj)
        )
        return Map__i32_i32.create(cmove(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[cmap[cint32_t,cint32_t]] _make_instance(object items) except *:
        cdef shared_ptr[cmap[cint32_t,cint32_t]] c_inst = make_shared[cmap[cint32_t,cint32_t]]()
        if items is not None:
            for key, item in items.items():
                if not isinstance(key, int):
                    raise TypeError(f"{key!r} is not of type int")
                key = <cint32_t> key
                if not isinstance(item, int):
                    raise TypeError(f"{item!r} is not of type int")
                item = <cint32_t> item

                deref(c_inst)[key] = item
        return c_inst

    cdef _check_key_type(self, key):
        if not self or key is None:
            return
        if isinstance(key, int):
            return key

    def __getitem__(self, key):
        err = KeyError(f'{key}')
        key = self._check_key_type(key)
        if key is None:
            raise err
        cdef cint32_t ckey = key
        if not __map_contains(self._cpp_obj, ckey):
            raise err
        cdef cint32_t citem = 0
        __map_getitem(self._cpp_obj, ckey, citem)
        return citem

    def __iter__(self):
        if not self:
            return
        cdef __map_iter[cmap[cint32_t,cint32_t]] itr = __map_iter[cmap[cint32_t,cint32_t]](self._cpp_obj)
        cdef cint32_t citem = 0
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextKey(self._cpp_obj, citem)
            yield citem

    def __contains__(self, key):
        key = self._check_key_type(key)
        if key is None:
            return False
        cdef cint32_t ckey = key
        return __map_contains(self._cpp_obj, ckey)

    def values(self):
        if not self:
            return
        cdef __map_iter[cmap[cint32_t,cint32_t]] itr = __map_iter[cmap[cint32_t,cint32_t]](self._cpp_obj)
        cdef cint32_t citem = 0
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextValue(self._cpp_obj, citem)
            yield citem

    def items(self):
        if not self:
            return
        cdef __map_iter[cmap[cint32_t,cint32_t]] itr = __map_iter[cmap[cint32_t,cint32_t]](self._cpp_obj)
        cdef cint32_t ckey = 0
        cdef cint32_t citem = 0
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextItem(self._cpp_obj, ckey, citem)
            yield (ckey, citem)

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__Map__i32_i32()


Mapping.register(Map__i32_i32)

@__cython.auto_pickle(False)
cdef class List__Map__i32_i32(thrift.py3.types.List):
    def __init__(self, items=None):
        if isinstance(items, List__Map__i32_i32):
            self._cpp_obj = (<List__Map__i32_i32> items)._cpp_obj
        else:
            self._cpp_obj = List__Map__i32_i32._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[vector[cmap[cint32_t,cint32_t]]] c_items):
        __fbthrift_inst = <List__Map__i32_i32>List__Map__i32_i32.__new__(List__Map__i32_i32)
        __fbthrift_inst._cpp_obj = cmove(c_items)
        return __fbthrift_inst

    def __copy__(List__Map__i32_i32 self):
        cdef shared_ptr[vector[cmap[cint32_t,cint32_t]]] cpp_obj = make_shared[vector[cmap[cint32_t,cint32_t]]](
            deref(self._cpp_obj)
        )
        return List__Map__i32_i32.create(cmove(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[vector[cmap[cint32_t,cint32_t]]] _make_instance(object items) except *:
        cdef shared_ptr[vector[cmap[cint32_t,cint32_t]]] c_inst = make_shared[vector[cmap[cint32_t,cint32_t]]]()
        if items is not None:
            for item in items:
                if item is None:
                    raise TypeError("None is not of the type _typing.Mapping[int, int]")
                if not isinstance(item, Map__i32_i32):
                    item = Map__i32_i32(item)
                deref(c_inst).push_back(deref((<Map__i32_i32>item)._cpp_obj))
        return c_inst

    cdef _get_slice(self, slice index_obj):
        cdef int start, stop, step
        start, stop, step = index_obj.indices(deref(self._cpp_obj).size())
        return List__Map__i32_i32.create(
            __list_slice[vector[cmap[cint32_t,cint32_t]]](self._cpp_obj, start, stop, step)
        )

    cdef _get_single_item(self, size_t index):
        cdef shared_ptr[cmap[cint32_t,cint32_t]] citem
        __list_getitem(self._cpp_obj, index, citem)
        return Map__i32_i32.create(citem)

    cdef _check_item_type(self, item):
        if not self or item is None:
            return
        if isinstance(item, Map__i32_i32):
            return item
        try:
            return Map__i32_i32(item)
        except:
            pass

    def index(self, item, start=0, stop=None):
        err = ValueError(f'{item} is not in list')
        item = self._check_item_type(item)
        if item is None:
            raise err
        cdef (int, int, int) indices = slice(start, stop).indices(deref(self._cpp_obj).size())
        cdef cmap[cint32_t,cint32_t] citem = deref((<Map__i32_i32>item)._cpp_obj)
        cdef std_libcpp.optional[size_t] found = __list_index[vector[cmap[cint32_t,cint32_t]]](self._cpp_obj, indices[0], indices[1], citem)
        if not found.has_value():
            raise err
        return found.value()

    def count(self, item):
        item = self._check_item_type(item)
        if item is None:
            return 0
        cdef cmap[cint32_t,cint32_t] citem = deref((<Map__i32_i32>item)._cpp_obj)
        return __list_count[vector[cmap[cint32_t,cint32_t]]](self._cpp_obj, citem)

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__List__Map__i32_i32()


Sequence.register(List__Map__i32_i32)

@__cython.auto_pickle(False)
cdef class List__Set__i32(thrift.py3.types.List):
    def __init__(self, items=None):
        if isinstance(items, List__Set__i32):
            self._cpp_obj = (<List__Set__i32> items)._cpp_obj
        else:
            self._cpp_obj = List__Set__i32._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[vector[cset[cint32_t]]] c_items):
        __fbthrift_inst = <List__Set__i32>List__Set__i32.__new__(List__Set__i32)
        __fbthrift_inst._cpp_obj = cmove(c_items)
        return __fbthrift_inst

    def __copy__(List__Set__i32 self):
        cdef shared_ptr[vector[cset[cint32_t]]] cpp_obj = make_shared[vector[cset[cint32_t]]](
            deref(self._cpp_obj)
        )
        return List__Set__i32.create(cmove(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[vector[cset[cint32_t]]] _make_instance(object items) except *:
        cdef shared_ptr[vector[cset[cint32_t]]] c_inst = make_shared[vector[cset[cint32_t]]]()
        if items is not None:
            for item in items:
                if item is None:
                    raise TypeError("None is not of the type _typing.AbstractSet[int]")
                if not isinstance(item, Set__i32):
                    item = Set__i32(item)
                deref(c_inst).push_back(deref((<Set__i32>item)._cpp_obj))
        return c_inst

    cdef _get_slice(self, slice index_obj):
        cdef int start, stop, step
        start, stop, step = index_obj.indices(deref(self._cpp_obj).size())
        return List__Set__i32.create(
            __list_slice[vector[cset[cint32_t]]](self._cpp_obj, start, stop, step)
        )

    cdef _get_single_item(self, size_t index):
        cdef shared_ptr[cset[cint32_t]] citem
        __list_getitem(self._cpp_obj, index, citem)
        return Set__i32.create(citem)

    cdef _check_item_type(self, item):
        if not self or item is None:
            return
        if isinstance(item, Set__i32):
            return item
        try:
            return Set__i32(item)
        except:
            pass

    def index(self, item, start=0, stop=None):
        err = ValueError(f'{item} is not in list')
        item = self._check_item_type(item)
        if item is None:
            raise err
        cdef (int, int, int) indices = slice(start, stop).indices(deref(self._cpp_obj).size())
        cdef cset[cint32_t] citem = deref((<Set__i32>item)._cpp_obj)
        cdef std_libcpp.optional[size_t] found = __list_index[vector[cset[cint32_t]]](self._cpp_obj, indices[0], indices[1], citem)
        if not found.has_value():
            raise err
        return found.value()

    def count(self, item):
        item = self._check_item_type(item)
        if item is None:
            return 0
        cdef cset[cint32_t] citem = deref((<Set__i32>item)._cpp_obj)
        return __list_count[vector[cset[cint32_t]]](self._cpp_obj, citem)

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__List__Set__i32()


Sequence.register(List__Set__i32)

@__cython.auto_pickle(False)
cdef class Map__i32_Map__i32_Set__i32(thrift.py3.types.Map):
    def __init__(self, items=None):
        if isinstance(items, Map__i32_Map__i32_Set__i32):
            self._cpp_obj = (<Map__i32_Map__i32_Set__i32> items)._cpp_obj
        else:
            self._cpp_obj = Map__i32_Map__i32_Set__i32._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]] c_items):
        __fbthrift_inst = <Map__i32_Map__i32_Set__i32>Map__i32_Map__i32_Set__i32.__new__(Map__i32_Map__i32_Set__i32)
        __fbthrift_inst._cpp_obj = cmove(c_items)
        return __fbthrift_inst

    def __copy__(Map__i32_Map__i32_Set__i32 self):
        cdef shared_ptr[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]] cpp_obj = make_shared[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]](
            deref(self._cpp_obj)
        )
        return Map__i32_Map__i32_Set__i32.create(cmove(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]] _make_instance(object items) except *:
        cdef shared_ptr[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]] c_inst = make_shared[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]()
        if items is not None:
            for key, item in items.items():
                if not isinstance(key, int):
                    raise TypeError(f"{key!r} is not of type int")
                key = <cint32_t> key
                if item is None:
                    raise TypeError("None is not of type _typing.Mapping[int, _typing.AbstractSet[int]]")
                if not isinstance(item, Map__i32_Set__i32):
                    item = Map__i32_Set__i32(item)

                deref(c_inst)[key] = deref((<Map__i32_Set__i32>item)._cpp_obj)
        return c_inst

    cdef _check_key_type(self, key):
        if not self or key is None:
            return
        if isinstance(key, int):
            return key

    def __getitem__(self, key):
        err = KeyError(f'{key}')
        key = self._check_key_type(key)
        if key is None:
            raise err
        cdef cint32_t ckey = key
        if not __map_contains(self._cpp_obj, ckey):
            raise err
        cdef shared_ptr[cmap[cint32_t,cset[cint32_t]]] citem
        __map_getitem(self._cpp_obj, ckey, citem)
        return Map__i32_Set__i32.create(citem)

    def __iter__(self):
        if not self:
            return
        cdef __map_iter[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]] itr = __map_iter[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]](self._cpp_obj)
        cdef cint32_t citem = 0
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextKey(self._cpp_obj, citem)
            yield citem

    def __contains__(self, key):
        key = self._check_key_type(key)
        if key is None:
            return False
        cdef cint32_t ckey = key
        return __map_contains(self._cpp_obj, ckey)

    def values(self):
        if not self:
            return
        cdef __map_iter[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]] itr = __map_iter[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]](self._cpp_obj)
        cdef shared_ptr[cmap[cint32_t,cset[cint32_t]]] citem
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextValue(self._cpp_obj, citem)
            yield Map__i32_Set__i32.create(citem)

    def items(self):
        if not self:
            return
        cdef __map_iter[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]] itr = __map_iter[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]](self._cpp_obj)
        cdef cint32_t ckey = 0
        cdef shared_ptr[cmap[cint32_t,cset[cint32_t]]] citem
        for i in range(deref(self._cpp_obj).size()):
            itr.genNextItem(self._cpp_obj, ckey, citem)
            yield (ckey, Map__i32_Set__i32.create(citem))

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__Map__i32_Map__i32_Set__i32()


Mapping.register(Map__i32_Map__i32_Set__i32)

@__cython.auto_pickle(False)
cdef class List__Map__i32_Map__i32_Set__i32(thrift.py3.types.List):
    def __init__(self, items=None):
        if isinstance(items, List__Map__i32_Map__i32_Set__i32):
            self._cpp_obj = (<List__Map__i32_Map__i32_Set__i32> items)._cpp_obj
        else:
            self._cpp_obj = List__Map__i32_Map__i32_Set__i32._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]] c_items):
        __fbthrift_inst = <List__Map__i32_Map__i32_Set__i32>List__Map__i32_Map__i32_Set__i32.__new__(List__Map__i32_Map__i32_Set__i32)
        __fbthrift_inst._cpp_obj = cmove(c_items)
        return __fbthrift_inst

    def __copy__(List__Map__i32_Map__i32_Set__i32 self):
        cdef shared_ptr[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]] cpp_obj = make_shared[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]](
            deref(self._cpp_obj)
        )
        return List__Map__i32_Map__i32_Set__i32.create(cmove(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]] _make_instance(object items) except *:
        cdef shared_ptr[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]] c_inst = make_shared[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]]()
        if items is not None:
            for item in items:
                if item is None:
                    raise TypeError("None is not of the type _typing.Mapping[int, _typing.Mapping[int, _typing.AbstractSet[int]]]")
                if not isinstance(item, Map__i32_Map__i32_Set__i32):
                    item = Map__i32_Map__i32_Set__i32(item)
                deref(c_inst).push_back(deref((<Map__i32_Map__i32_Set__i32>item)._cpp_obj))
        return c_inst

    cdef _get_slice(self, slice index_obj):
        cdef int start, stop, step
        start, stop, step = index_obj.indices(deref(self._cpp_obj).size())
        return List__Map__i32_Map__i32_Set__i32.create(
            __list_slice[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]](self._cpp_obj, start, stop, step)
        )

    cdef _get_single_item(self, size_t index):
        cdef shared_ptr[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]] citem
        __list_getitem(self._cpp_obj, index, citem)
        return Map__i32_Map__i32_Set__i32.create(citem)

    cdef _check_item_type(self, item):
        if not self or item is None:
            return
        if isinstance(item, Map__i32_Map__i32_Set__i32):
            return item
        try:
            return Map__i32_Map__i32_Set__i32(item)
        except:
            pass

    def index(self, item, start=0, stop=None):
        err = ValueError(f'{item} is not in list')
        item = self._check_item_type(item)
        if item is None:
            raise err
        cdef (int, int, int) indices = slice(start, stop).indices(deref(self._cpp_obj).size())
        cdef cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]] citem = deref((<Map__i32_Map__i32_Set__i32>item)._cpp_obj)
        cdef std_libcpp.optional[size_t] found = __list_index[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]](self._cpp_obj, indices[0], indices[1], citem)
        if not found.has_value():
            raise err
        return found.value()

    def count(self, item):
        item = self._check_item_type(item)
        if item is None:
            return 0
        cdef cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]] citem = deref((<Map__i32_Map__i32_Set__i32>item)._cpp_obj)
        return __list_count[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]](self._cpp_obj, citem)

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__List__Map__i32_Map__i32_Set__i32()


Sequence.register(List__Map__i32_Map__i32_Set__i32)

@__cython.auto_pickle(False)
cdef class List__List__Map__i32_Map__i32_Set__i32(thrift.py3.types.List):
    def __init__(self, items=None):
        if isinstance(items, List__List__Map__i32_Map__i32_Set__i32):
            self._cpp_obj = (<List__List__Map__i32_Map__i32_Set__i32> items)._cpp_obj
        else:
            self._cpp_obj = List__List__Map__i32_Map__i32_Set__i32._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[vector[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]]] c_items):
        __fbthrift_inst = <List__List__Map__i32_Map__i32_Set__i32>List__List__Map__i32_Map__i32_Set__i32.__new__(List__List__Map__i32_Map__i32_Set__i32)
        __fbthrift_inst._cpp_obj = cmove(c_items)
        return __fbthrift_inst

    def __copy__(List__List__Map__i32_Map__i32_Set__i32 self):
        cdef shared_ptr[vector[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]]] cpp_obj = make_shared[vector[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]]](
            deref(self._cpp_obj)
        )
        return List__List__Map__i32_Map__i32_Set__i32.create(cmove(cpp_obj))

    def __len__(self):
        return deref(self._cpp_obj).size()

    @staticmethod
    cdef shared_ptr[vector[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]]] _make_instance(object items) except *:
        cdef shared_ptr[vector[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]]] c_inst = make_shared[vector[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]]]()
        if items is not None:
            for item in items:
                if item is None:
                    raise TypeError("None is not of the type _typing.Sequence[_typing.Mapping[int, _typing.Mapping[int, _typing.AbstractSet[int]]]]")
                if not isinstance(item, List__Map__i32_Map__i32_Set__i32):
                    item = List__Map__i32_Map__i32_Set__i32(item)
                deref(c_inst).push_back(deref((<List__Map__i32_Map__i32_Set__i32>item)._cpp_obj))
        return c_inst

    cdef _get_slice(self, slice index_obj):
        cdef int start, stop, step
        start, stop, step = index_obj.indices(deref(self._cpp_obj).size())
        return List__List__Map__i32_Map__i32_Set__i32.create(
            __list_slice[vector[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]]](self._cpp_obj, start, stop, step)
        )

    cdef _get_single_item(self, size_t index):
        cdef shared_ptr[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]] citem
        __list_getitem(self._cpp_obj, index, citem)
        return List__Map__i32_Map__i32_Set__i32.create(citem)

    cdef _check_item_type(self, item):
        if not self or item is None:
            return
        if isinstance(item, List__Map__i32_Map__i32_Set__i32):
            return item
        try:
            return List__Map__i32_Map__i32_Set__i32(item)
        except:
            pass

    def index(self, item, start=0, stop=None):
        err = ValueError(f'{item} is not in list')
        item = self._check_item_type(item)
        if item is None:
            raise err
        cdef (int, int, int) indices = slice(start, stop).indices(deref(self._cpp_obj).size())
        cdef vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]] citem = deref((<List__Map__i32_Map__i32_Set__i32>item)._cpp_obj)
        cdef std_libcpp.optional[size_t] found = __list_index[vector[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]]](self._cpp_obj, indices[0], indices[1], citem)
        if not found.has_value():
            raise err
        return found.value()

    def count(self, item):
        item = self._check_item_type(item)
        if item is None:
            return 0
        cdef vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]] citem = deref((<List__Map__i32_Map__i32_Set__i32>item)._cpp_obj)
        return __list_count[vector[vector[cmap[cint32_t,cmap[cint32_t,cset[cint32_t]]]]]](self._cpp_obj, citem)

    @staticmethod
    def __get_reflection__():
        return _types_reflection.get_reflection__List__List__Map__i32_Map__i32_Set__i32()


Sequence.register(List__List__Map__i32_Map__i32_Set__i32)

