# This script iterates an R Markdown template with parameters along vectors with
# n values each for the parameters and then outputs n documents
#
# iterate.R can be used to make .html, .pdf, and more
#
# Read here for more information:
# https://medium.com/@urban_institute/iterated-fact-sheets-with-r-markdown-d685eb4eafce

# load tidyverse for stringr, purrr, tibble, and magrittr
library(tidyverse)

# create vectors that match the parameters in the .Rmd template
state <- c("District of Columbia", "Maryland", "Virginia")

# create a tibble with a variable for output files names and a variable with
# names that match the parameters in the .Rmd template
reports <- tibble(
  output_file = str_c("output/driving-", state, ".html"), # output file names
  params = map(state, ~list(state = .))                   # parameters
)

# iterate the template
reports %>%
  pwalk(rmarkdown::render, input = "template.Rmd")
