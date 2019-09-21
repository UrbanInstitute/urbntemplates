#' construct_slide_show
#'
#' Adds the necessary templates for making slide shows at the Urban
#'   Institute.Adds a .gitignore, revealjs template, CSS styles, and
#'   a header image.
#'
#' @inheritParams construct_fact_sheet_html
#'
#' @md
#' @export
construct_slide_show <- function(name = "revealjs.Rmd",
                                 directory = NULL,
                                 instructions = TRUE) {

  use_git_ignore_urbn(gitignore = "web_report", open = FALSE)
  use_revealjs(name = name, directory = directory)
  use_css(stylesheet = "revealjs", directory = "www", open = FALSE)
  if (instructions) {
    use_instructions(instructions = "revealjs")
  }

}
