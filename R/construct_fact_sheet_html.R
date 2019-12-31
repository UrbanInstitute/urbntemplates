#' construct_fact_sheet_html
#'
#' Adds the necessary templates for making html fact sheets at the Urban
#'   Institute. Adds a .gitignore, html fact sheet template, CSS, iteration
#'   script, and instructions.
#'
#' @inheritParams use_fact_sheet_html
#' @param instructions Should a markdown of helpful instructions be included?
#'   Defaults to `TRUE`.
#'
#' @md
#' @export
construct_fact_sheet_html <- function(name = "fact_sheet_html.Rmd",
                                      directory = NULL,
                                      instructions = TRUE) {

  use_git_ignore_urbn(gitignore = "fact_sheet_html", open = FALSE)
  use_fact_sheet_html(name = name, directory = directory)
  use_css(stylesheet = "web_report", directory = "www", open = FALSE)
  use_iterate(directory = directory)
  if (instructions) {
    use_instructions(instructions = "fact_sheet_html")
  }

}
