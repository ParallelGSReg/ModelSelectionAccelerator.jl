module ResearchAccelerator

using ModelSelection
using DataFrames

include("utils.jl")
include("core.jl")
include("const.jl")
include("Output/Output.jl")

using ..Output

export Output
export researchaccelerator
 
end

