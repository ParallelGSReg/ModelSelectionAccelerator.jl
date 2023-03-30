using Distributions, Documenter

makedocs(
    format = Documenter.HTML(),
    sitename = "ResearchAccelerator",
    pages = [
        "Home" => "index.md"
    ],
    debug = true,
)

deploydocs(
    repo   = "github.com/ParallelGSReg/ResearchAccelerator.jl.git",
)