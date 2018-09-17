#' construct_web_report
#'
#' Adds the necessary templates for making web reports at the Urban
#'   Institute.Adds a .gitignore, pdf_fact_sheet template, LaTeX preamble, and
#'   iteration script.
#'
#' @md
#' @export
construct_web_report <- function() {

  use_git_ignore_urbn(gitignore = "web_report", open = FALSE)
  use_web_report(name = "web_report.Rmd", directory = NULL)
  use_css(stylesheet = "web_report", open = FALSE)

}
