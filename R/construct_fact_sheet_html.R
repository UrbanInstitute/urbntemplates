#' construct_fact_sheet_html
#'
#' Adds the necessary templates for making html fact sheets at the Urban
#'   Institute. Adds a .gitignore, html fact sheet template, CSS, iteration
#'   script, and instructions.
#'
#' @md
#' @export
construct_fact_sheet_html <- function() {

  use_git_ignore_urbn(gitignore = "fact_sheet_html", open = FALSE)
  use_fact_sheet_html(name = "fact_sheet_html.Rmd", directory = NULL)
  use_css(stylesheet = "web_report", directory = "www", open = FALSE)
  use_iterate()
  use_instructions(instructions = "fact_sheet_html")

}
