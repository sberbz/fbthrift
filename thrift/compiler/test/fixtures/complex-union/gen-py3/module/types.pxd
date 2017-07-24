#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap, pair as cpair
from libcpp.unordered_set cimport unordered_set as cuset
from libcpp.unordered_map cimport unordered_map as cumap
from thrift.py3.exceptions cimport cTException, Error as __Error
cimport thrift.py3.types




cdef extern from "src/gen-cpp2/module_types_custom_protocol.h" namespace "cpp2":
    # Forward Declaration
    cdef cppclass cComplexUnion "cpp2::ComplexUnion"
    # Forward Declaration
    cdef cppclass cFinalComplexUnion "cpp2::FinalComplexUnion"

cdef extern from "src/gen-cpp2/module_types.h" namespace "cpp2":
    cdef cppclass cComplexUnion__isset "cpp2::ComplexUnion::__isset":
        bint intValue
        bint stringValue
        bint intListValue
        bint stringListValue
        bint typedefValue
        bint stringRef

    cdef cppclass cComplexUnion "cpp2::ComplexUnion":
        cComplexUnion() except +
        cComplexUnion(const cComplexUnion&) except +
        bint operator==(cComplexUnion&)
        int64_t intValue
        string stringValue
        vector[int64_t] intListValue
        vector[string] stringListValue
        cmap[int16_t,string] typedefValue
        unique_ptr[string] stringRef
        cComplexUnion__isset __isset

    cdef cppclass cFinalComplexUnion__isset "cpp2::FinalComplexUnion::__isset":
        bint thingOne
        bint thingTwo

    cdef cppclass cFinalComplexUnion "cpp2::FinalComplexUnion":
        cFinalComplexUnion() except +
        cFinalComplexUnion(const cFinalComplexUnion&) except +
        bint operator==(cFinalComplexUnion&)
        string thingOne
        string thingTwo
        cFinalComplexUnion__isset __isset

    cdef shared_ptr[string] aliasing_constructor_stringRef "std::shared_ptr<std::string>"(shared_ptr[cComplexUnion]&, string*)

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[cComplexUnion] move(unique_ptr[cComplexUnion])
    cdef shared_ptr[cComplexUnion] move_shared "std::move"(shared_ptr[cComplexUnion])
    cdef unique_ptr[cComplexUnion] move_unique "std::move"(unique_ptr[cComplexUnion])
    cdef shared_ptr[cFinalComplexUnion] move(unique_ptr[cFinalComplexUnion])
    cdef shared_ptr[cFinalComplexUnion] move_shared "std::move"(shared_ptr[cFinalComplexUnion])
    cdef unique_ptr[cFinalComplexUnion] move_unique "std::move"(unique_ptr[cFinalComplexUnion])

cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const cComplexUnion] const_pointer_cast "std::const_pointer_cast<const cpp2::ComplexUnion>"(shared_ptr[cComplexUnion])
    cdef shared_ptr[const cFinalComplexUnion] const_pointer_cast "std::const_pointer_cast<const cpp2::FinalComplexUnion>"(shared_ptr[cFinalComplexUnion])

# Forward Definition of the cython struct
cdef class ComplexUnion(thrift.py3.types.Struct)

cdef class ComplexUnion(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cComplexUnion] _cpp_obj
    cdef List__i64 __intListValue
    cdef List__string __stringListValue
    cdef Map__i16_string __typedefValue

    @staticmethod
    cdef unique_ptr[cComplexUnion] _make_instance(
        cComplexUnion* base_instance,
        object intValue,
        object stringValue,
        object intListValue,
        object stringListValue,
        object typedefValue,
        object stringRef
    ) except *

    @staticmethod
    cdef create(shared_ptr[cComplexUnion])

# Forward Definition of the cython struct
cdef class FinalComplexUnion(thrift.py3.types.Struct)

cdef class FinalComplexUnion(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cFinalComplexUnion] _cpp_obj

    @staticmethod
    cdef unique_ptr[cFinalComplexUnion] _make_instance(
        cFinalComplexUnion* base_instance,
        object thingOne,
        object thingTwo
    ) except *

    @staticmethod
    cdef create(shared_ptr[cFinalComplexUnion])


cdef class List__i64:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[int64_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[int64_t]])
    @staticmethod
    cdef unique_ptr[vector[int64_t]] _make_instance(object items) except *

cdef class List__string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[string]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[string]])
    @staticmethod
    cdef unique_ptr[vector[string]] _make_instance(object items) except *

cdef class Map__i16_string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[int16_t,string]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[int16_t,string]])
    @staticmethod
    cdef unique_ptr[cmap[int16_t,string]] _make_instance(object items) except *

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[vector[int64_t]] move(unique_ptr[vector[int64_t]])
    cdef unique_ptr[vector[int64_t]] move_unique "std::move"(unique_ptr[vector[int64_t]])
    cdef shared_ptr[vector[string]] move(unique_ptr[vector[string]])
    cdef unique_ptr[vector[string]] move_unique "std::move"(unique_ptr[vector[string]])
    cdef shared_ptr[cmap[int16_t,string]] move(unique_ptr[cmap[int16_t,string]])
    cdef unique_ptr[cmap[int16_t,string]] move_unique "std::move"(unique_ptr[cmap[int16_t,string]])
cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const vector[int64_t]] const_pointer_cast "std::const_pointer_cast"(shared_ptr[vector[int64_t]])

    cdef shared_ptr[const vector[string]] const_pointer_cast "std::const_pointer_cast"(shared_ptr[vector[string]])

    cdef shared_ptr[const cmap[int16_t,string]] const_pointer_cast "std::const_pointer_cast"(shared_ptr[cmap[int16_t,string]])

