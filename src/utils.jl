function input(
	data::ModelSelection.ModelSelectionData;
	exportlatex::Union{Nothing, String} = EXPORTLATEX_DEFAULT,
	query::Union{Vector{String}, Nothing} = QUERT_CONST,
	max::Int = MAX_CONST, 
	source::String = SOURCE_CONST, 
	method::String = METHOD_CONST, 
	outfile::String = OUTFILE_CONST,
	outbib::String = OUTBIB_CONST,
    username::Union{String, Nothing} = USERNAME_CONST,
    password::Union{String, Nothing} = PASS_CONST,
    data_csv::Union{String, Nothing} = outfile,
    out_folder::String = OUT_FOLDER_CONST, 
    n_neighbors::Int = N_NEIGHBORS_CONST, 
    n_components::Int = N_COMPONENTS_CONST, 
    min_cluster_size::Int = MIN_CLUSTER_SIZE_CONST,
    min_samples::Int = MIN_SAMPLES_CONST,
    diversity::Union{String, Nothing} = DIVERSITY_CONST,
    language::Union{String, Nothing} = LANGUAGE_CONST,
    export_html::Bool = EXPORT_HTML_CONST
)

    user_input = Dict(
        "data" => data,
        "exportlatex" => string(exportlatex),
        if !isnothing(query)
            "query" => string("['", join(query, "', '"), "']")
        else
            "query" => query
        end,
        "max" => max,
        "source" => string(source),
        "method" => string(method),
        "outfile" => string("'" ,outfile,"'"),
        "outbib" => outbib,
        "username" => string(username),
        "password" => string(password),
        "data_csv" => data_csv,
        "out_folder" => out_folder, 
        "n_neighbors" => n_neighbors, 
        "n_components" => n_components, 
        "min_cluster_size" => min_cluster_size,
        "min_samples" => min_samples,
        "diversity" => diversity,
        "language" => language,
        "export_html" => export_html

    )

    return user_input
end

export input