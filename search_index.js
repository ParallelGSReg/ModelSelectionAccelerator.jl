var documenterSearchIndex = {"docs":
[{"location":"todo/#Todo","page":"Todo","title":"Todo","text":"","category":"section"},{"location":"todo/","page":"Todo","title":"Todo","text":"using Markdown, ModelSelectionAccelerator\r\nMarkdown.parse_file(joinpath(pkgdir(ModelSelectionAccelerator), \"TODO.md\"))","category":"page"},{"location":"license/#License","page":"License","title":"License","text":"","category":"section"},{"location":"license/","page":"License","title":"License","text":"using Markdown, ModelSelectionAccelerator\r\nMarkdown.parse_file(joinpath(pkgdir(ModelSelectionAccelerator), \"LICENSE\"))","category":"page"},{"location":"usage/#Usage","page":"Usage","title":"Usage","text":"","category":"section"},{"location":"usage/#Index","page":"Usage","title":"Index","text":"","category":"section"},{"location":"usage/","page":"Usage","title":"Usage","text":"Pages = [\"usage.md\"]","category":"page"},{"location":"usage/#Advanced-usage","page":"Usage","title":"Advanced usage","text":"","category":"section"},{"location":"usage/","page":"Usage","title":"Usage","text":"using ModelSelection\r\nusing ModelSelectionAccelerator\r\n\r\ndata = ModelSelection.load(\"result.jld\")\r\n\r\n# Obtain a Latex Document which summarizes all ModelSelection Results, as well as a bibliography analysis based on keywords introduced by the user, from google scholar. In this case, at least 50 documents are analyzed.\r\nModelSelectionAccelerator.researchaccelerator(\r\n\tdata, \r\n\tquery = [\"Balance of Payments\", \"Constraints\", \"Real Exchange Rate\"], \r\n\tmax = 50,\r\n\tsource = \"gscholar\",\r\n) \r\n\r\n# Obtain a Latex Document which summarizes all ModelSelection Results, as well as a bibliography analysis based on keywords introduced by the user, from google scholar. In this case, at least 50 documents are analyzed.\r\nModelSelectionAccelerator.researchaccelerator(\r\n\tdata, \r\n\tquery = [\"Balance of Payments\", \"Constraints\", \"Real Exchange Rate\"], \r\n\tmax = 50,\r\n\tsource = \"gscholar\",\r\n) ","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"The .zip file resulted, could be load in OverLeaf to obtain the .pdf file, as well as edit the documents considering user's preferences.","category":"page"},{"location":"usage/#researchaccelerator()-function","page":"Usage","title":"researchaccelerator() function","text":"","category":"section"},{"location":"usage/","page":"Usage","title":"Usage","text":"researchaccelerator() function is a versatile tool designed to assist researchers in various stages of their research process, particularly in the areas of model selection, literature analysis, and publication analysis. It integrates with different modules like ModelSelection.jl, PublishOrPerish.jl, and BiblioAnalysis.jl, allowing users to perform a wide range of research-related tasks efficiently.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"function researchaccelerator(\r\n\t# Latex Usage\r\n\tdata::ModelSelection.ModelSelectionData;\r\n\texportlatex::Union{Nothing, String} = EXPORTLATEX_DEFAULT,\r\n\t\r\n\t# PublishOrPerish Usage\r\n\tquery::Union{Vector{String}, Nothing} = QUERT_CONST,\r\n\tmax::Int = MAX_CONST, \r\n\tsource::String = SOURCE_CONST, \r\n\tmethod::String = METHOD_CONST, \r\n\toutfile::String = OUTFILE_CONST,\r\n\toutbib::String = OUTBIB_CONST,\r\n\tusername::Union{String, Nothing} = USERNAME_CONST,\r\n\tpassword::Union{String, Nothing} = PASS_CONST,\r\n\r\n\t# BiblioAnalysis Usage\r\n\tdata_csv::Union{String, Nothing} = outfile,\r\n\tquery_ ::Union{Vector{String}, Nothing} = query,\r\n\tout_folder::String = OUTFILE_CONST, \r\n\tn_neighbors::Int = N_NEIGHBORS_CONST, \r\n\tn_components::Int = N_COMPONENTS_CONST, \r\n\tmin_cluster_size::Int = MIN_CLUSTER_SIZE_CONST,\r\n\tmin_samples::Int = MIN_SAMPLES_CONST,\r\n\tdiversity::Union{String, Nothing} = DIVERSITY_CONST,\r\n\tlanguage::Union{String, Nothing} = LANGUAGE_CONST,\r\n\texport_html::Bool = EXPORT_HTML_CONST\r\n)","category":"page"},{"location":"usage/#Parameters","page":"Usage","title":"Parameters","text":"","category":"section"},{"location":"usage/","page":"Usage","title":"Usage","text":"data::ModelSelection.ModelSelectionData): The core input data required by the function. It should be of type ModelSelection.ModelSelectionData, and is obtained after use ModelSelection.jl package..","category":"page"},{"location":"usage/#Optional-parameters","page":"Usage","title":"Optional parameters","text":"","category":"section"},{"location":"usage/","page":"Usage","title":"Usage","text":"exportlatex::Union{Nothing, String}: Export of results in LaTeX format. If provided with a filename (String), the function will export results to the specified LaTeX file. If set to Nothing, default will be performed. Default: ResearchAccelerator.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"query::Union{Vector{String}, Nothing}: Specify the search query for the literature analysis. If provided with a Vector of Strings, it represents the search terms for the literature analysis. If set to Nothing, PublishOrPerish and BiblioAnalysis modules will not be performed. Default: nothing.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"max::Int: The maximum number of results to fetch in the literature analysis. It determines the limit of publications to retrieve for analysis. Default: 100.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"source::String: Specifies the data source for literature analysis. It defines the publication database to be used. Available options ar: crossref, gsauthor, gscholar, gsciting, gsprofile, masv2, openalex, pubmed, scopus, semscholar, wos. Default: gscolar.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"method::String: Specifies the method for literature analysis. It defines the specific algorithm or approach to use in fetching publications. Available methods are: author, affiliation, citedid, field, issn, journal, title, keywords, years, raw.Default: keywords.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"outfile::String: The filename for exporting .csv results of literature analysis. The fetched publications will be stored in the specified file. This input is mandatory to perform the bibliography analysis. Default: ./src/Output/decorations/latex/tpl/bib_output.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"outbib::String: The filename for exporting the bibliography data of the fetched publications in BibTeX format. This input is used to build the Latex Document. Default: nothing.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"username::Union{String, Nothing}: The username for accessing certain publication databases, if required. If set to Nothing, no username will be used. Default: nothing.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"password::Union{String, Nothing}: The password associated with the username for accessing certain publication databases, if required. If set to Nothing, no password will be used. Default: nothing.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"data_csv::Union{String, Nothing}: This parameter allows users to specify the CSV filename for BiblioAnalysis. If provided with a filename (String), the function will use this file for the analysis. If set to Nothing, the outfile parameter value will be used as the default CSV file. Default: outfile.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"query_::Union{Vector{String}, Nothing}: Same query introduced lately. If provided with a Vector of Strings, it represents the search terms for BiblioAnalysis. If set to Nothing, the query parameter value will be used. Default: query.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"n_neighbors::Int: The number of neighbors to be used in the clustering algorithm of BiblioAnalysis. Default: 5.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"n_components::Int: The number of components to be used in the dimensionality reduction step of BiblioAnalysis. Default: 5.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"min_cluster_size::Int: The minimum number of publications required in a cluster during the clustering process of BiblioAnalysis. Default: 3.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"min_samples::Int: The number of samples required to form a cluster during the clustering process of BiblioAnalysis. Default: 5.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"diversity::Union{String, Nothing}: The diversity metric to be used in the BiblioAnalysis. It defines the approach for calculating the diversity of publications within clusters. Default: nothing.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"language::Union{String, Nothing}: The language filter to be applied in the literature analysis. It specifies the language of the publications to be retrieved. Default: nothing.","category":"page"},{"location":"usage/","page":"Usage","title":"Usage","text":"export_html::Bool: A boolean flag indicating whether to export the BiblioAnalysis results in HTML format. Default: false.","category":"page"},{"location":"contributing/#Contributing","page":"Contributing","title":"Contributing","text":"","category":"section"},{"location":"contributing/","page":"Contributing","title":"Contributing","text":"using Markdown, ModelSelectionAccelerator\r\nMarkdown.parse_file(joinpath(pkgdir(ModelSelectionAccelerator), \"CONTRIBUTING.md\"))","category":"page"},{"location":"start/#Getting-started","page":"Getting Started","title":"Getting started","text":"","category":"section"},{"location":"start/","page":"Getting Started","title":"Getting Started","text":"This basic example demonstrates how to use the package in its simplest way. However, for a more in-depth understanding of the various options and features, please navigate to the Usage section where all available functionalities and usage scenarios are thoroughly explained.","category":"page"},{"location":"start/#Installation","page":"Getting Started","title":"Installation","text":"","category":"section"},{"location":"start/","page":"Getting Started","title":"Getting Started","text":"ModelSelectionAccelerator.jl can be installed using the Julia package manager. From the Julia REPL, type ] to enter the Pkg REPL mode and run","category":"page"},{"location":"start/","page":"Getting Started","title":"Getting Started","text":"pkg> add ModelSelectionAccelerator","category":"page"},{"location":"start/#Usage","page":"Getting Started","title":"Usage","text":"","category":"section"},{"location":"start/","page":"Getting Started","title":"Getting Started","text":"using ModelSelection, ModelSelectionAccelerator\r\n\r\ndata = ModelSelection.load(\"result.jld\")\r\nModelSelectionAccelerator.ModelSelectionAccelerator(data)","category":"page"},{"location":"news/#News","page":"News","title":"News","text":"","category":"section"},{"location":"news/","page":"News","title":"News","text":"using Markdown, ModelSelectionAccelerator\r\nMarkdown.parse_file(joinpath(pkgdir(ModelSelectionAccelerator), \"NEWS.md\"))","category":"page"},{"location":"#ModelSelectionAccelerator.jl","page":"Home","title":"ModelSelectionAccelerator.jl","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"ModelSelectionAccelerator.jl is a Julia Package that provides broad-based support to accelerate applied research using feature selection/dimensionality reduction techniques.","category":"page"},{"location":"#Features","page":"Home","title":"Features","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Extended Julia-to-Latex migration functions that work as an “automatic research assistant”. Using ModelSelection.jl results, it generates a dynamic Latex document, with relevant tables, graphics, and metrics.\nAI integration for references and literature review. Using user-provided keywords or phrases, ModelSelectionAccelerator.jl will interact with Google Scholar, Scopus, PubMed, among others, to obtain a potentially relevant bibliography. Then a subset of them with available abstracts, references, and keywords will be used to provide citation networks, and keywords/citations statistics. Finally, a machine learning system with modern Large Language Models will be used to generate, based on articles’ abstracts, a similarity network to provide users with additional information for a deeper search among related bibliography. This network will be exported to the Latex document as a table, a figure, and to a standard output file to be viewed using graph plotting and analysis tools such as Gephi.","category":"page"},{"location":"#ModelSelection-package","page":"Home","title":"ModelSelection package","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"ModelSelectionAccelerator.jl package uses ModelSelection.jl. For more details about the functionalities and features provided by ModelSelection.jl, please visit the package repository.","category":"page"},{"location":"#Contributing","page":"Home","title":"Contributing","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Contributions are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request on the repository. Make sure to follow the guidelines outlined in the Contributing section.","category":"page"},{"location":"#TODO-List","page":"Home","title":"TODO List","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"For an overview of pending tasks, improvements, and future plans for the ModelSelectionGUI package, please refer to the TODO section.","category":"page"},{"location":"#License","page":"Home","title":"License","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"This package is licensed under the MIT License.","category":"page"}]
}
