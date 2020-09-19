module Models

using ..BasicTypes
using ..Dian: THREAD_MODES

export Model, Bus, PQ, PV, Slack, Line, Shunt
export g_update!, collect_g!, set_v!
export alloc_triplets, store_triplets!, add_triplets!

abstract type Model{T} end

alloc_triplets(ty::T, n::N) where {T<:Type{Model},N<:Integer} =
    @error "Model $ty does not define `alloc_triplets()`"

include("./bus.jl")
include("./pq.jl")
include("./pv.jl")
include("./line.jl")
include("./shunt.jl")

end
