function researchaccelerator(
	data::Union{Array{Float64}, Array{Float32}, Array{Union{Float32, Missing}}, Array{Union{Float64, Missing}}, Tuple, DataFrame, Nothing};
	exportlatex::Union{Nothing, String} = EXPORTLATEX_DEFAULT,
	keywords::Union{Nothing, Array{String}},
	title::Union{Nothing, String}
)
	researcharccelerator(
		data = data,
		exportlatex = exportlatex,
		keywords=keywords,
		title=title
	)
#TRANSFORMAR DATA EN ModelSelectionData
#GENERAR OBJETOS DE BIBLIO
	ResearchAccelerator.Output.latex(data, original_data, path = exportlatex)
	println("Latex document has been generated")
	# incluir el path de salida
end
