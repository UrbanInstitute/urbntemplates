#' construct_pdf_fact_sheet
#'
#' Adds the necessary templates for making PDF fact sheets at the Urban
#' Institute.Adds a .gitignore, pdf_fact_sheet template, and LaTeX preamble.
#'
#' @md
#' @export
construct_pdf_fact_sheet <- function() {

  use_git_ignore_urbn(gitignore = "pdf_fact_sheet", open = FALSE)
  use_pdf_fact_sheet(name = "pdf_fact_sheet.Rmd", directory = NULL)
  use_preamble(preamble = "fact_sheet", directory = NULL, open = FALSE)

}
