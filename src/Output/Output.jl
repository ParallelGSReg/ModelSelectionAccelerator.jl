module Output

using
	DataFrames,
	DelimitedFiles,
	Distributed,
	Distributions,
	# InfoZIP,
	KernelDensity,
	Mustache,
	Plots,
	Printf,
	Statistics,
	StatsPlots,
	ZipFile,
	ModelSelection

using ..ResearchAccelerator

export latex

include("../utils.jl")
include("strings.jl")
include("const.jl")
include("decorations/latex/latex.jl")
include("core.jl")

end
