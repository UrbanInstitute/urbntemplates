#' construct_web_report
#'
#' Adds the necessary templates for making web reports at the Urban
#'   Institute. Adds a web report template, stylesheet, and
#'   instructions.
#'
#' @md
#' @export
construct_web_report <- function() {

  use_git_ignore_urbn(gitignore = "web_report", open = FALSE)
  use_web_report(name = "web_report.Rmd", directory = NULL)
  use_css(stylesheet = "web_report", open = FALSE)
  use_instructions(instructions = "web_report")

}
