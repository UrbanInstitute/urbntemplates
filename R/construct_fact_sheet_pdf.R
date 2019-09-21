#' construct_fact_sheet_pdf
#'
#' Adds the necessary templates for making PDF fact sheets at the Urban
#'   Institute. Adds a .gitignore, pdf_fact_sheet template, LaTeX preamble,
#'   iteration script, and instructions.
#'
#' @inheritParams construct_fact_sheet_html
#'
#' @md
#' @export
construct_fact_sheet_pdf <- function(name = "fact_sheet_pdf.Rmd",
                                     directory = NULL,
                                     instructions = TRUE) {

  use_git_ignore_urbn(gitignore = "fact_sheet_pdf", open = FALSE)
  use_fact_sheet_pdf(name = name, directory = directory)
  use_preamble(preamble = "fact_sheet", directory = NULL, open = FALSE)
  use_iterate()
  if (instructions) {
    use_instructions(instructions = "fact_sheet_pdf")
  }

}
