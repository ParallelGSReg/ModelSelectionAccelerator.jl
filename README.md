# ModelSelectionAccelerator.jl

[![][documentation-main-img]][documentation-main-url] [![][build-main-img]][build-main-url]

ModelSelectionAccelerator.jl is a Julia Package that provides broad-based support to accelerate applied research using feature selection/dimensionality reduction techniques.

## Features

- Extended Julia-to-Latex migration functions that work as an “automatic research assistant”. Using [ModelSelection.jl](https://github.com/ParallelGSReg/ModelSelectionGUI.jl) results, it generates a dynamic Latex document, with relevant tables, graphics, and metrics.
  
- AI integration for references and literature review. Using user-provided keywords or phrases, ModelSelectionAccelerator.jl will interact with Google Scholar, Scopus, PubMed, among others, to obtain a potentially relevant bibliography. Then a subset of them with available abstracts, references, and keywords will be used to provide citation networks, and keywords/citations statistics. Finally, a machine learning system with modern Large Language Models will be used to generate, based on articles’ abstracts, a similarity network to provide users with additional information for a deeper search among related bibliography. This network will be exported to the Latex document as a table, a figure, and to a standard output file to be viewed using graph plotting and analysis tools such as Gephi.

## Installation

You can install the package by running the following command in the Julia REPL:

```julia
using Pkg
Pkg.add("ModelSelectionAccelerator")
```

## Usage

```julia
using ModelSelection, ModelSelectionAccelerator

data = ModelSelection.load("result.jld")
ModelSelectionAccelerator.ModelSelectionAccelerator(data)
```

The .zip file resulted, could be load in OverLeaf to obtain the .pdf file, as well as edit the documents considering user's preferences.

## Documentation

For more detailed information about this package, its functionalities, and usage instructions, please refer to our [documentation page](https://parallelgsreg.github.io/ModelSelectionAccelerator.jl).

## ModelSelection package
ModelSelectionAccelerator.jl package uses ModelSelection.jl. For more details about the functionalities and features provided by ModelSelection, please visit the [package repository](https://github.com/ParallelGSReg/ModelSelection.jl).

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request on the repository. Make sure to follow the guidelines outlined in the [CONTRIBUTING.md](CONTRIBUTING.md) file.

## TODO List

For an overview of pending tasks, improvements, and future plans for the ModelSelectionAccelerator.jl package, please refer to the [TODO.md](TODO.md) file.

## License

This package is licensed under the [MIT License](LICENSE).

[build-main-img]: https://github.com/ParallelGSReg/ModelSelectionAccelerator.jl/actions/workflows/build.yaml/badge.svg?branch=main
[build-main-url]: https://github.com/ParallelGSReg/ModelSelectionAccelerator.jl/pkgs/container/ModelSelectionAccelerator.jl

[test-main-img]: https://github.com/ParallelGSReg/ModelSelectionAccelerator.jl/actions/workflows/test.yaml/badge.svg?branch=main
[test-main-url]: https://github.com/ParallelGSReg/ModelSelectionAccelerator.jl/actions/workflows/test.yaml

[codecov-img]: https://codecov.io/gh/ParallelGSReg/ModelSelectionAccelerator.jl/branch/main/graph/badge.svg
[codecov-url]: https://codecov.io/gh/ParallelGSReg/ModelSelectionAccelerator.jl

[documentation-main-img]: https://github.com/ParallelGSReg/ModelSelectionAccelerator.jl/actions/workflows/docs.yaml/badge.svg
[documentation-main-url]: https://parallelgsreg.github.io/ModelSelectionAccelerator.jl
