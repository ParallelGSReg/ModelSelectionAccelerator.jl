module ResearchAccelerator

    using ModelSelection
    using DataFrames

    include("utils.jl")
    include("core.jl")
    include("const.jl")
    include("Output/Output.jl")
    include("PublishOrPerish/PublishOrPerish.jl")

    using ..Output
    using ..PublishOrPerish

    export Output
    export PublishOrPerish
    export researchaccelerator
    
end

