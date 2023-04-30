module Output

using
	JLD,
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
	ZipFile

using ..ResearchAccelerator

#export csv, summary, latex
export latex

#include("../utils.jl")
include("utils.jl")
include("strings.jl")
include("const.jl")
include("decorations/latex/latex.jl")
include("core.jl")
#include("strings.jl")
#include("decorations/csv/csv.jl")
#include("decorations/summary/summary.jl")

end
