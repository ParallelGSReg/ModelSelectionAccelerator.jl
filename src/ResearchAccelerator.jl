module ResearchAccelerator

using ModelSelection
using DataFrames

include("utils.jl")
include("core.jl")
include("const.jl")
include("Output/Output.jl")

#using ..Preprocessing
#using ..FeatureExtraction
#using ..PreliminarySelection
#using ..AllSubsetRegression
#using ..CrossValidation
using ..Output

#export ModelSelectionData

#export Preprocessing, FeatureExtraction, PreliminarySelection, CrossValidation, Output
export Output
export researchaccelerator

end

