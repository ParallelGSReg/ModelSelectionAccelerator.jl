# Usage

## Index

```@contents
Pages = ["usage.md"]
```

## Advanced usage

```julia
using ModelSelection
using ResearchAccelerator

data = ModelSelection.load("result.jld")

# Obtain a Latex Document which summarizes all ModelSelection Results, as well as a bibliography analysis based on keywords introduced by the user, from google scholar. In this case, at least 50 documents are analyzed.
ResearchAccelerator.researchaccelerator(
	data, 
	query = ["Balance of Payments", "Constraints", "Real Exchange Rate"], 
	max = 50,
	source = "gscholar",
) 

# Obtain a Latex Document which summarizes all ModelSelection Results, as well as a bibliography analysis based on keywords introduced by the user, from google scholar. In this case, at least 50 documents are analyzed.
ResearchAccelerator.researchaccelerator(
	data, 
	query = ["Balance of Payments", "Constraints", "Real Exchange Rate"], 
	max = 50,
	source = "gscholar",
) 
```

The .zip file resulted, could be load in OverLeaf to obtain the .pdf file, as well as edit the documents considering user's preferences.

## researchaccelerator() function

`researchaccelerator()` function is a versatile tool designed to assist researchers in various stages of their research process, particularly in the areas of model selection, literature analysis, and publication analysis. It integrates with different modules like `ModelSelection.jl`, `PublishOrPerish.jl`, and `BiblioAnalysis.jl`, allowing users to perform a wide range of research-related tasks efficiently.

```julia
function researchaccelerator(
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
	data_csv::Union{String, Nothing} = outfile,
	query_ ::Union{Vector{String}, Nothing} = query,
	out_folder::String = OUTFILE_CONST, 
	n_neighbors::Int = N_NEIGHBORS_CONST, 
	n_components::Int = N_COMPONENTS_CONST, 
	min_cluster_size::Int = MIN_CLUSTER_SIZE_CONST,
	min_samples::Int = MIN_SAMPLES_CONST,
	diversity::Union{String, Nothing} = DIVERSITY_CONST,
	language::Union{String, Nothing} = LANGUAGE_CONST,
	export_html::Bool = EXPORT_HTML_CONST
)
```

### Parameters
- `data::ModelSelection.ModelSelectionData)`: The core input data required by the function. It should be of type ModelSelection.ModelSelectionData, and is obtained after use ModelSelection.jl package..

### Optional parameters

- `exportlatex::Union{Nothing, String}`: Export of results in LaTeX format. If provided with a filename (String), the function will export results to the specified LaTeX file. If set to Nothing, default will be performed. Default: `ResearchAccelerator`.

- `query::Union{Vector{String}, Nothing}`: Specify the search query for the literature analysis. If provided with a Vector of Strings, it represents the search terms for the literature analysis. If set to Nothing, PublishOrPerish and BiblioAnalysis modules will not be performed. Default: `nothing`.

- `max::Int`: The maximum number of results to fetch in the literature analysis. It determines the limit of publications to retrieve for analysis. Default: `100`.

- `source::String`: Specifies the data source for literature analysis. It defines the publication database to be used. Available options ar: `crossref`, `gsauthor`, `gscholar`, `gsciting`, `gsprofile`, `masv2`, `openalex`, `pubmed`, `scopus`, `semscholar`, `wos`. Default: `gscolar`.

- `method::String`: Specifies the method for literature analysis. It defines the specific algorithm or approach to use in fetching publications. Available methods are: `author`, `affiliation`, `citedid`, `field`, `issn`, `journal`, `title`, `keywords`, `years`, `raw`.Default: `keywords`.

- `outfile::String`: The filename for exporting .csv results of literature analysis. The fetched publications will be stored in the specified file. This input is mandatory to perform the bibliography analysis. Default: `./src/Output/decorations/latex/tpl/bib_output`.

- `outbib::String`: The filename for exporting the bibliography data of the fetched publications in BibTeX format. This input is used to build the Latex Document. Default: `nothing`.

- `username::Union{String, Nothing}`: The username for accessing certain publication databases, if required. If set to Nothing, no username will be used. Default: `nothing`.

- `password::Union{String, Nothing}`: The password associated with the username for accessing certain publication databases, if required. If set to Nothing, no password will be used. Default: `nothing`.

- `data_csv::Union{String, Nothing}`: This parameter allows users to specify the CSV filename for BiblioAnalysis. If provided with a filename (String), the function will use this file for the analysis. If set to Nothing, the outfile parameter value will be used as the default CSV file. Default: `outfile`.

- `query_::Union{Vector{String}, Nothing}`: Same query introduced lately. If provided with a Vector of Strings, it represents the search terms for BiblioAnalysis. If set to Nothing, the query parameter value will be used. Default: `query`.

- `n_neighbors::Int`: The number of neighbors to be used in the clustering algorithm of BiblioAnalysis. Default: `5`.

- `n_components::Int`: The number of components to be used in the dimensionality reduction step of BiblioAnalysis. Default: `5`.

- `min_cluster_size::Int`: The minimum number of publications required in a cluster during the clustering process of BiblioAnalysis. Default: `3`.

- `min_samples::Int`: The number of samples required to form a cluster during the clustering process of BiblioAnalysis. Default: `5`.

- `diversity::Union{String, Nothing}`: The diversity metric to be used in the BiblioAnalysis. It defines the approach for calculating the diversity of publications within clusters. Default: `nothing`.

- `language::Union{String, Nothing}`: The language filter to be applied in the literature analysis. It specifies the language of the publications to be retrieved. Default: `nothing`.

- `export_html::Bool`: A boolean flag indicating whether to export the BiblioAnalysis results in HTML format. Default: `false`.
