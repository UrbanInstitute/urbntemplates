#' construct_web_report
#'
#' Adds the necessary templates for making web reports at the Urban
#'   Institute. Adds a web report template, stylesheet, and
#'   instructions.
#'
#' @inheritParams construct_fact_sheet_html
#'
#' @md
#' @export
construct_web_report <- function(name = "web_report.Rmd",
                                 directory = NULL,
                                 instructions = TRUE) {

  use_git_ignore_urbn(gitignore = "web_report", open = FALSE)
  use_web_report(name = name, directory = directory)
  use_css(stylesheet = "web_report", open = FALSE)
  if (instructions) {
    use_instructions(instructions = "web_report")
  }
}
