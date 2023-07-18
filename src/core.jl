function researchaccelerator(
	data::ModelSelection.ModelSelectionData;
	exportlatex::Union{Nothing, String} = EXPORTLATEX_DEFAULT,
	query::Union{String, Vector{String}, Nothing} = QUERT_CONST,
	max::Int = MAX_CONST, 
	source::String = SOURCE_CONST, 
	method::String = METHOD_CONST, 
	outfile::String = OUTFILE_CONST,
	outbib::String = OUTBIB_CONST,
	username::String = USERNAME_CONST,
	password::String = PASS_CONST
)
	bib_gen = false

	if !isnothing(query)
		bib_gen = PublishOrPerish.search(query, max, source, method, outfile, outbib) 
		println("Bib file generated successfully")
	end
	
	Output.latex(data, data.original_data, path = exportlatex, bib_gen = bib_gen)
	println("Latex document has been generated in specified path")

end
