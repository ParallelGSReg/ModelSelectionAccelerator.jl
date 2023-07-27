module PublishOrPerish

	using ..ModelSelectionReport
	include("const.jl")

	sources = ["crossref", "gsauthor", "gscholar", "gsciting", "gsprofile", 
		   "masv2", "openalex", "pubmed", "scopus", "semscholar", "wos"]

	methods = ["author", "affiliation", "citedid", "field", "issn", "journal", "title", "keywords", "years", "raw"]

	function search(
			query::Union{Vector{String}, Nothing} = QUERT_CONST, 
			max::Int = MAX_CONST, 
			source::String = SOURCE_CONST, 
			method::String = METHOD_CONST, 
			outfile::String = OUTFILE_CONST,
			outbib::String = OUTBIB_CONST,
			username::Union{String, Nothing} = USERNAME_CONST,
			password::Union{String, Nothing} = PASS_CONST
		)::Bool
	    
	    if !(source in sources) 
		    # FIXME throw exception
		    print("Invalid source. Given: $source, available sources $sources")
		    return false
	    end

	    if !(method in methods)
		    # FIXME throw exception
		    print("Invalid method. Given: $method, available methods $methods")
		    return false
	    end

	    source = "--$source"
	    method = "--$method"
	    #=
--author authorspec
--affiliation affiliation
--citedid id
--field fieldofstudy
--issn issn
--journal journalname
--title title
--keywords words
--years from-to
or:
--raw syntax    use native 'syntax' directly
	    =#
	    cmd_salida = `src/PublishOrPerish/bin/pop8query --max=$max $source $method=\"$query\" $outfile`
	    cmd_bibtex= `src/PublishOrPerish/bin/pop8query --max=$max $source $method=\"$query\" --format=bibtex $outbib.bib`
	    try
	    	output = read(run(cmd_salida), String)
	    	output = read(run(cmd_bibtex), String)
	    catch y
		print("Error: $y")
		if(isa(y, ProcessFailedException))
			return false 
		end
	    # run(::Base.AbstractCmd, ::Any...; wait) at process.jl:477
	    end
	    return true
	end
	
	export search

end
