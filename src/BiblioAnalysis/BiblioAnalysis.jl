module BiblioAnalysis

	using ..ModelSelectionAccelerator
	include("const.jl")

	function analyzer(
			data_csv::Union{String, Nothing} = DATA_CONST,
            query::Union{Vector{String}, String, Nothing} = QUERT_CONST_, 
			out_folder::String = OUT_FOLDER_CONST; 
			n_neighbors::Int = N_NEIGHBORS_CONST, 
			n_components::Int = N_COMPONENTS_CONST, 
			min_cluster_size::Int = MIN_CLUSTER_SIZE_CONST,
			min_samples::Int = MIN_SAMPLES_CONST,
			diversity::Union{String, Nothing} = DIVERSITY_CONST,
			language::Union{String, Nothing} = LANGUAGE_CONST,
            export_html::Bool = EXPORT_HTML_CONST
		)::Bool
	    
		
		cmd_salida = `./src/BiblioAnalysis/bin/biblioanalysis --data_csv=\"$data_csv\" --query=\"$query\" --out_folder=\"$out_folder\" --n_neighbors=$n_neighbors --n_components=$n_components --min_cluster_size=$min_cluster_size --min_samples=$min_samples --language=$language --export_html=$export_html`
	    #--diversity=$diversity

        try
	    	output = read(run(cmd_salida), String)
	    catch y
		print("Error: $y")
		if(isa(y, ProcessFailedException))
			return false 
		end
	    # run(::Base.AbstractCmd, ::Any...; wait) at process.jl:477
	    end
	    return true
	end
	
	export analyzer

end
