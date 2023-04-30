function researchaccelerator(
	data::ModelSelection.ModelSelectionResult;
	exportlatex::Union{Nothing, String} = EXPORTLATEX_DEFAULT,
	keywords::Union{Nothing, Array{String}},
	title::Union{Nothing, String}
)
	# TODO: TRANSFORMAR DATA EN ModelSelectionData
	# TODO: GENERAR OBJETOS DE BIBLIO

	ResearchAccelerator.Output.latex(data, path = exportlatex)
	println("Latex document has been generated")
	# TODO: incluir el path de salida
end
