#' construct_fact_sheet_html
#'
#' Adds the necessary templates for making PDF fact sheets at the Urban
#'   Institute.Adds a .gitignore, pdf_fact_sheet template, LaTeX preamble, and
#'   iteration script.
#'
#' @md
#' @export
construct_fact_sheet_html <- function() {

  use_git_ignore_urbn(gitignore = "fact_sheet_html", open = FALSE)
  use_fact_sheet_pdf(name = "fact_sheet_html.Rmd", directory = NULL)
  use_css(stylesheet = "web_report", directory = NULL, open = FALSE)
  use_iterate()

}
