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
    password::Union{String, Nothing} = PASS_CONST
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
        "password" => string(password)
    )

    return user_input
end

export input