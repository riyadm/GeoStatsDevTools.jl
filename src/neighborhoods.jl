# ------------------------------------------------------------------
# Copyright (c) 2017, Júlio Hoffimann Mendes <juliohm@stanford.edu>
# Licensed under the ISC License. See LICENCE in the project root.
# ------------------------------------------------------------------

"""
    AbstractNeighborhood

A neighborhood on a spatial domain of type `D`.
"""
abstract type AbstractNeighborhood{D<:AbstractDomain} end

# Neighborhoods are functor objects that can be evaluated
# at a given location:
#
# julia> neighborhood(location)
#
# The operator () returns the neighbors (as integers) and
# is implemented differently depending on the domain type.

#------------------
# IMPLEMENTATIONS
#------------------
include("neighborhoods/cube_neighborhood.jl")
include("neighborhoods/ball_neighborhood.jl")
