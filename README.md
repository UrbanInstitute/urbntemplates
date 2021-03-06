
# urbntemplates

**NOTE:** This project is still under active development.

**NOTE:** All publications still need to go throught the normal COMM
process.

`library(urbntemplates)` contains tools and templates for managing
analysis workflows at the Urban Institute. It heavily relies on
functions and functionality from
[usethis](https://github.com/r-lib/usethis).

## Installation

You can install the latest version of `urbntemplates` from GitHub:

    # install.packages("devtools")
    devtools::install_github("UrbanInstitute/urbntemplates")

## Usage

`library(urbntemplates)` contains three families of functions:

`start_project()` generates a new project with a .Rproj, README, and
.gitignore at the specified location on a machine.

`construct_*()` functions add multiple, related templates and documents
to a project directory or sub-directory. The templates and documents are
related in important ways. For example, `construct_shiny()` adds `app.R`
and an R Shiny specific CSS. It also adds instructions for using the
selected template.

`use_*()` functions add individual templates and documents to a project
directory or sub directory.

A sensible workflow is:

1)  Start a new project and create a .Rproj by submitting
    `urbntemplates::start_project()`. This will create and open a new
    .Rproj.
2)  Inside the .Rproj, add the necessary documents for a part of a
    project, like a Shiny application, with a `construct_*()` function.
3)  Add any desired remaining templates or documents with `use_*()`
    functions.

Note:

`construct_*()` functions are useful on their own. If you have an
existing project, just use `construct_*()` to add all of the necessary
templates and documents for creating a product like a branded slide show
or an R Markdown web report.

### start function

  - `start_project()`

### construct functions

  - `construct_shiny()`
  - `construct_fact_sheet_html()`
  - `construct_fact_sheet_pdf()`
  - `construct_slide_show()`
  - `construct_web_report()`

### use functions

  - `use_content()`
  - `use_css()`
  - `use_fact_sheet_html()`
  - `use_fact_sheet_pdf()`
  - `use_git_ignore_urbn()`
  - `use_instructions()`
  - `use_iterate()`
  - `use_preamble()`
  - `use_revealjs()`
  - `use_shiny_app()`
  - `use_readme_readme()`
  - `use_web_report()`

## License

Code released under the GNU General Public License v3.0.

## Code of conduct

Please note that the “urbntemplates” project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to
this project, you agree to abide by its terms.
