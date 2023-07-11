function researchaccelerator(
	data::ModelSelection.ModelSelectionData;
	exportlatex::Union{Nothing, String} = EXPORTLATEX_DEFAULT,
	#keywords::Union{Nothing, Array{String}},
	#title::Union{Nothing, String}
)
	Output.latex(data, data.original_data, path = exportlatex)
	println("Latex document has been generated in specified path")
	# TODO: incluir el path de salida
end
