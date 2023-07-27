# ModelSelectionReport.jl

ModelSelectionReport.jl is a Julia Package that provides broad-based support to accelerate applied research using feature selection/dimensionality reduction techniques.

## Features

- Extended Julia-to-Latex migration functions that work as an “automatic research assistant”. Using [ModelSelection.jl](https://github.com/ParallelGSReg/ModelSelectionGUI.jl) results, it generates a dynamic Latex document, with relevant tables, graphics, and metrics.
  
- AI integration for references and literature review. Using user-provided keywords or phrases, ModelSelectionReport.jl will interact with Google Scholar, Scopus, PubMed, among others, to obtain a potentially relevant bibliography. Then a subset of them with available abstracts, references, and keywords will be used to provide citation networks, and keywords/citations statistics. Finally, a machine learning system with modern Large Language Models will be used to generate, based on articles’ abstracts, a similarity network to provide users with additional information for a deeper search among related bibliography. This network will be exported to the Latex document as a table, a figure, and to a standard output file to be viewed using graph plotting and analysis tools such as Gephi.

## ModelSelection package
ModelSelectionReport.jl package uses ModelSelection.jl. For more details about the functionalities and features provided by ModelSelection.jl, please visit the [package repository](https://github.com/ParallelGSReg/ModelSelection.jl).

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request on the repository. Make sure to follow the guidelines outlined in the [Contributing](contributing) section.

## TODO List

For an overview of pending tasks, improvements, and future plans for the ModelSelectionGUI package, please refer to the [TODO](todo.md) section.

## License

This package is licensed under the [MIT License](license.md).
