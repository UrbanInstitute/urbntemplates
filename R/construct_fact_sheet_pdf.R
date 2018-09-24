#' construct_fact_sheet_pdf
#'
#' Adds the necessary templates for making PDF fact sheets at the Urban
#'   Institute. Adds a .gitignore, pdf_fact_sheet template, LaTeX preamble,
#'   iteration script, and instructions.
#'
#' @md
#' @export
construct_fact_sheet_pdf <- function() {

  use_git_ignore_urbn(gitignore = "fact_sheet_pdf", open = FALSE)
  use_fact_sheet_pdf(name = "fact_sheet_pdf.Rmd", directory = NULL)
  use_preamble(preamble = "fact_sheet", directory = NULL, open = FALSE)
  use_iterate()
  use_instructions(instructions = "fact_sheet_pdf")

}
