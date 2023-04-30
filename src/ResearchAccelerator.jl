module ResearchAccelerator

using DataFrames

include("structs/ModelSelection_data.jl")
include("const.jl")
include("strings.jl")
include("utils.jl")
include("core.jl")

#include("Preprocessing/Preprocessing.jl")
#include("FeatureExtraction/FeatureExtraction.jl")
#include("PreliminarySelection/PreliminarySelection.jl")
#include("AllSubsetRegression/AllSubsetRegression.jl")
#include("CrossValidation/CrossValidation.jl")
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

end

