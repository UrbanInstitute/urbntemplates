#' construct_slide_show
#'
#' Adds the necessary templates for making slide shows at the Urban
#'   Institute.Adds a .gitignore, revealjs template, CSS styles, and
#'   a header image.
#'
#' @md
#' @export
construct_slide_show <- function() {

  use_git_ignore_urbn(gitignore = "web_report", open = FALSE)
  use_revealjs(name = "revealjs.Rmd", directory = NULL)
  use_css(stylesheet = "web_report", directory = "www", open = FALSE)
  use_instructions(instructions = "revealjs")

}
