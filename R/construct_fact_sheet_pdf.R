#' construct_pdf_fact_sheet
#'
#' Adds the necessary templates for making PDF fact sheets at the Urban
#' Institute.Adds a .gitignore, pdf_fact_sheet template, and LaTeX preamble.
#'
#' @md
#' @export
construct_fact_sheet_pdf <- function() {

  use_git_ignore_urbn(gitignore = "fact_sheet_pdf", open = FALSE)
  use_fact_sheet_pdf(name = "fact_sheet_pdf.Rmd", directory = NULL)
  use_preamble(preamble = "fact_sheet", directory = NULL, open = FALSE)

}
