module ModelSelectionAccelerator

    using ModelSelection
    using DataFrames

    include("utils.jl")
    include("core.jl")
    include("const.jl")
    include("Output/Output.jl")
    include("PublishOrPerish/PublishOrPerish.jl")
    include("BiblioAnalysis/BiblioAnalysis.jl")

    using ..Output
    using ..PublishOrPerish
    using ..BiblioAnalysis

    export Output
    export PublishOrPerish
    export BiblioAnalysis
    export researchaccelerator
end
