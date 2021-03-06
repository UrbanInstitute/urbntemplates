% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_preamble.R
\name{use_preamble}
\alias{use_preamble}
\title{use_preamble}
\usage{
use_preamble(preamble = "fact_sheet", directory = NULL, open = FALSE)
}
\arguments{
\item{preamble}{Selection of preamble. Current options are \code{"fact_sheet"}.}

\item{directory}{The directory where the template should be saved and opened.
The project directory is preferable for most projects. Use NULL to save the
template to the project directory or working directory.}

\item{open}{Boolean for whether or not to open the instructions}
}
\description{
Adds a LaTeX preamble to the specified directory
}
