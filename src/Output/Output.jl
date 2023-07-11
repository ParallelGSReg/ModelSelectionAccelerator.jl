module Output

using
 	ModelSelection,
	JLD2,
	DataFrames,
	DelimitedFiles,
	Distributed,
	Distributions,
	KernelDensity,
	Mustache,
	Plots,
	Printf,
	Statistics,
	StatsPlots,
	ZipFile

using ..ResearchAccelerator

#export csv, summary, latex
export latex

include("utils.jl")
include("strings.jl")
include("const.jl")
include("decorations/latex/latex.jl")

end
