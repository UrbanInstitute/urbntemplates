
urbntemplates
=============

`library(urbntemplates)` contains tools and templates for managing analysis workflows at the Urban Institute.

Installation
------------

You can install the latest version of `urbntemplate` from GitHub:

    # install.packages("devtools")
    devtools::install_github("UrbanInstitute/urbnmapr")

Usage
-----

`library(urbntemplates)` contains three families of functions:

`start_project()` generates a new project with a .Rproj, README, and git at the specified location on a machine.

`construct_*()` functions add multiple templates and documents to a project directory or subdirectory. The templates and documents are related in important ways. For example, `construct_shiny()` adds `app.R` and an R Shiny specific CSS.

`use_*()` functions add individual templates and documents to a project directory or subdirectory.

A sensible workflow is:

1.  Start a new project with `start_project()`.
2.  Add the nesessary documents for a part of a project, like a Shiny application, with a `construct_*()` function.
3.  Add any desired remaining templates with `use_*()` functions.

### start function

-   `start_project()`

### construct functions

-   `construct_shiny_app()`

### use functions

-   `use_css()`
-   `use_iterate()`
-   `use_preamble()`
-   `use_revealjs()`
-   `use_shiny_app()`
-   `use_urbn_readme()`

License
-------

Code released under the GNU General Public License v3.0.

Code of conduct
---------------

Please note that the 'urbntemplates' project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project, you agree to abide by its terms.
