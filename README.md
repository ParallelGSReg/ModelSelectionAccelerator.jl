# ResearchAccelerator.jl
```ResearchAccelerator.jl``` is a Julia Package that provides broad-based support to accelerate applied research using feature selection/dimensionality reduction techniques. This package that includes:

* Extended Julia-to-Latex migration functions that work as an “automatic research assistant”. Using ```ModelSelection.jl``` results, it generates a dynamic Latex document, with relevant tables, graphics, and metrics.
  
* AI integration for references and literature review. Using user-provided keywords or phrases, ```ResearchAccelerator.jl``` will interact with Google Scholar, Scopus, PubMed, among others, to obtain a potentially relevant bibliography. Then a subset of them with available abstracts, references, and keywords will be used to provide citation networks, and keywords/citations statistics. Finally, a machine learning system with modern Large Language Models will be used to generate, based on articles’ abstracts, a similarity network to provide users with additional information for a deeper search among related bibliography. This network will be exported to the Latex document as a table, a figure, and to a standard output file to be viewed using graph plotting and analysis tools such as Gephi.

## Function Documentation: 

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

``researchaccelerator()`` function is a versatile tool designed to assist researchers in various stages of their research process, particularly in the areas of model selection, literature analysis, and publication analysis. It integrates with different modules like ```ModelSelection.jl```, ```PublishOrPerish.jl```, and ```BiblioAnalysis.jl```, allowing users to perform a wide range of research-related tasks efficiently.

Parameters:

- ``data`` (Required, ``Type::ModelSelection.ModelSelectionData)``

Description: This parameter is the core input data required by the function. It should be of type ModelSelection.ModelSelectionData, and is obtained after use ModelSelection.jl package..

- ``exportlatex`` (Optional, ``Type::Union{Nothing, String}``, Default: ``EXPORTLATEX_DEFAULT = "ResearchAccelerator"``)

Description: This parameter controls the export of results in LaTeX format. If provided with a filename (String), the function will export results to the specified LaTeX file. If set to Nothing, default will be performed.

- ``query`` (Optional, ``Type::Union{Vector{String}, Nothing}``, ``Default: QUERY_CONST = nothing``)

Description: This parameter is used to specify the search query for the literature analysis. If provided with a Vector of Strings, it represents the search terms for the literature analysis. If set to Nothing, PublishOrPerish and BiblioAnalysis modules will not be performed.

``max`` (Optional, ``Type::Int``, ``Default: MAX_CONST = 100``)

Description: The maximum number of results to fetch in the literature analysis. It determines the limit of publications to retrieve for analysis.

- ``source`` (Optional, ``Type::String``, ``Default: SOURCE_CONST = gscholar``)

Description: Specifies the data source for literature analysis. It defines the publication database to be used. Sources might be:

``sources = ["crossref", "gsauthor", "gscholar", "gsciting", "gsprofile", "masv2", "openalex", "pubmed", "scopus", "semscholar", "wos"]``

- ``method`` (Optional, ``Type::String``, ``Default: METHOD_CONST = keywords``)

Description: Specifies the method for literature analysis. It defines the specific algorithm or approach to use in fetching publications.

``methods = ["author", "affiliation", "citedid", "field", "issn", "journal", "title", "keywords", "years", "raw"]``

- ``outfile`` (Optional, ``Type::String``, ``Default: OUTFILE_CONST = "./bib_output.csv"``)

Description: The filename for exporting .csv results of literature analysis. The fetched publications will be stored in the specified file. This input is mandatory to perform the bibliography analysis.

- ``outbib`` (Optional, ``Type::String``, ``Default: OUTBIB_CONST = "./src/Output/decorations/latex/tpl/bib_output"``)

Description: The filename for exporting the bibliography data of the fetched publications in BibTeX format. This input is used to build the Latex Document.

- ``username`` (Optional, ``Type::Union{String, Nothing}``, ``Default: USERNAME_CONST = nothing``) (Under Development)

Description: The username for accessing certain publication databases, if required. If set to Nothing, no username will be used.

- ``password`` (Optional, ``Type::Union{String, Nothing}``, ``Default: PASS_CONST = nothing``) (Under Development)

Description: The password associated with the username for accessing certain publication databases, if required. If set to Nothing, no password will be used.

- ``data_csv`` (Optional, ``Type::Union{String, Nothing}``, ``Default: outfile``)

Description: This parameter allows users to specify the CSV filename for BiblioAnalysis. If provided with a filename (String), the function will use this file for the analysis. If set to Nothing, the outfile parameter value will be used as the default CSV file.

- ``query_`` (Optional, ``Type::Union{Vector{String}, Nothing}``, ``Default: query``)

Description: same query introduced lately. If provided with a Vector of Strings, it represents the search terms for BiblioAnalysis. If set to Nothing, the query parameter value will be used.

- ``n_neighbors`` (Optional, ``Type::Int``, ``Default: N_NEIGHBORS_CONST = 5``)

Description: The number of neighbors to be used in the clustering algorithm of BiblioAnalysis.

- ``n_components`` (Optional, ``Type::Int``, ``Default: N_COMPONENTS_CONST = 5``)

Description: The number of components to be used in the dimensionality reduction step of BiblioAnalysis.

- ``min_cluster_size`` (Optional, ``Type::Int``, ``Default: MIN_CLUSTER_SIZE_CONST = 3``)

Description: The minimum number of publications required in a cluster during the clustering process of BiblioAnalysis.

- ``min_samples`` (Optional, ``Type::Int``, ``Default: MIN_SAMPLES_CONST = 5``)

Description: The number of samples required to form a cluster during the clustering process of BiblioAnalysis.

- ``diversity`` (Optional, ``Type::Union{String, Nothing}``, ``Default: DIVERSITY_CONST = nothing``)

Description: The diversity metric to be used in the BiblioAnalysis. It defines the approach for calculating the diversity of publications within clusters.

- ``language`` (Optional, ``Type::Union{String, Nothing}``, ``Default: LANGUAGE_CONST = nothing``)

Description: The language filter to be applied in the literature analysis. It specifies the language of the publications to be retrieved.

- ``export_html`` (Optional, ``Type::Bool``, ``Default: EXPORT_HTML_CONST = false``)

Description: A boolean flag indicating whether to export the BiblioAnalysis results in HTML format.


Simple usage:

```julia
# After performe ModelSelection.jl, the the results database (.jld) should be load using:

using ModelSelection

data = ModelSelection.load("result.jld")

# Thereupon, the ResearchAccelerator packege could be used.
using ResearchAccelerator

# Obtain a Latex Document which summarizes all ModelSelection Results
ResearchAccelerator.researchaccelerator(data)
```

Advanced Usage:

```julia
using ModelSelection
using ResearchAccelerator

data = ModelSelection.load("result.jld")

# Obtain a Latex Document which summarizes all ModelSelection Results, as well as a bibliography analysis based on keywords introduced by the user, from google scholar. In this case, at least 50 documents are analyzed.
ResearchAccelerator.researchaccelerator(data, 
                                        query = ["Balance of Payments", "Constraints", "Real Exchange Rate"], 
                                        max = 50,
                                        source = "gscholar") 



# Obtain a Latex Document which summarizes all ModelSelection Results, as well as a bibliography analysis based on keywords introduced by the user, from google scholar. In this case, at least 50 documents are analyzed.
ResearchAccelerator.researchaccelerator(data, 
                                        query = ["Balance of Payments", "Constraints", "Real Exchange Rate"], 
                                        max = 50,
                                        source = "gscholar") 

```

The .zip file resulted, could be load in OverLeaf to obtain the .pdf file, as well as edit the documents considering user's preferences.