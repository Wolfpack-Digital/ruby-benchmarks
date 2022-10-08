# Ruby benchmarks

A set of open source shell, Ruby & Rails scripts with the purpose of benchmarking your machine and compare it to the rest.

You can choose the set of the scripts/benchmarks you want to run:
- parsing a CSV with ~18.5k rows and 90 columns
- _[your idea here]_

## Getting started

1. Clone/download the project
2. Run `chmod +x main.sh`
3. Run `./main.sh`
4. Select the benchmarks you want to include

## Contributing

1. Fork the repo to your Github profile
2. Clone the forked project on your machine
3. Add a remote upstream to the original branch
4. Create a new branch
5. Go wild! Make sure you check the [workflow](#workflow)  chapter, though
6. Commit & push your changes
7. Create a PR


_P.S.: right now, we do not have any commit/branching styling/naming rules; we might give feedback on the PR regarding it, but being such a new project, moving forward is important_

## Project structure

There are 3 subfolders and 1 main script:
- the `main.sh` script will just ask the user which of the benchmarks they want to run
- the `projects` folder will contain more complex projects, especially ones that require external libraries or to use Rails functionalities
- the `ruby_scripts` folder will contain shorter, Ruby only, scripts
- the `shell_scripts` folder will contain the shell scripts that are used either for running the benchmarks for the Ruby scripts or the Rails projects and some other helpful shell functions/commands (like defining a function for the command line chooser)

## Workflow

For every new contribution, a Github issue must be created. This will help us with following the progress on the project much easier. We will follow the issues daily and help with comments, suggestions and applying labels to issues.

Whenever you want to add a new Ruby script or a project, make sure you create a folder with the name of the benchmark inside the `ruby_scripts` or `projects` folder and also a shell script (if this is just a script, no need to create a folder, but make sure you use the same naming) that will run and benchmark the feature you just added.

_Example: you want to add a Ruby script that does some CSV parsing. First, create a folder or a file in the `ruby_scripts` folder, named `csv_parser/main.rb`. Second, add a `csv_parser.sh` file in the `shell_scripts` folder, that will run `csv_parser/main.rb` and also time it. After that, add the option to include this benchmark, by modifying `main.sh`._
