function modelselectionaccelerator(
	# Latex Usage
	data::ModelSelection.ModelSelectionData;
	exportlatex::Union{Nothing, String} = EXPORTLATEX_DEFAULT,
	
	# PublishOrPerish Usage
	query::Union{Vector{String}, Nothing} = QUERT_CONST,
	max::Int = MAX_CONST, 
	source::String = SOURCE_CONST, 
	method::String = METHOD_CONST, 
	outfile::String = OUTFILE_CONST,
	outbib::String = OUTBIB_CONST,
	username::Union{String, Nothing} = USERNAME_CONST,
	password::Union{String, Nothing} = PASS_CONST,

	# BiblioAnalysis Usage
	data_csv::Union{String, Nothing} = OUTFILE_CONST,
	query_ ::Union{Vector{String}, Nothing} = query,
	out_folder::String = OUT_FOLDER_CONST, 
	n_neighbors::Int = N_NEIGHBORS_CONST, 
	n_components::Int = N_COMPONENTS_CONST, 
	min_cluster_size::Int = MIN_CLUSTER_SIZE_CONST,
	min_samples::Int = MIN_SAMPLES_CONST,
	diversity::Union{String, Nothing} = DIVERSITY_CONST,
	language::Union{String, Nothing} = LANGUAGE_CONST,
	export_html::Bool = EXPORT_HTML_CONST
)
	bib_gen = false
	analyzer_gen = true

	if !isnothing(query)
		bib_gen = PublishOrPerish.search(query, max, source, method, outfile, outbib)
		println("ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ")
		println("▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒")
		println("ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ")
		println("bib file generated successfully")
		println("ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ")
		println("▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒")
		#analyzer_gen = BiblioAnalysis.analizer(data_csv, query_, out_folder, n_neighbors, n_components, min_cluster_size, min_samples, diversity, language, export_html) 
		println("ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ")
		println("Biblioghaphy analyzed successfully")
		println("ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ")
		println("▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒")
		
	end
	
	user_input = input(
		data;
        exportlatex = exportlatex,
        query = query,
        max = max, 
        source = source, 
        method = method, 
        outfile = outfile,
        outbib = outbib,
        username = username,
        password = password,
		n_neighbors = n_neighbors, 
		n_components = n_components, 
		min_cluster_size = min_cluster_size,
		min_samples = min_samples,
		diversity = diversity,
		language = language,
		export_html = export_html
	)
		
	Output.latex(data, data.original_data, path = exportlatex, bib_gen = bib_gen, analyzer_gen = analyzer_gen, user_input = user_input)
	println("ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ")
	println("Latex document has been generated")
	println("ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ")
	println("▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒")
end
