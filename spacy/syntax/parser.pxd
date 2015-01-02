from .._ml cimport Model, HastyModel

from .arc_eager cimport TransitionSystem

from ..tokens cimport Tokens, TokenC


cdef class GreedyParser:
    cdef object cfg
    cdef readonly Model model
    cdef TransitionSystem moves

    cpdef int parse(self, Tokens tokens) except -1