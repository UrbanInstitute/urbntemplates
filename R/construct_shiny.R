#' construct_shiny
#'
#' Adds the necessary templates for making a Shiny application. Adds a .gitignore,
#'   app.R, and Urban Institute R Shiny CSS.
#'
#' @md
#' @export
construct_shiny <- function() {

  use_git_ignore_urbn(gitignore = "shiny", open = FALSE)
  use_shiny_app()
  use_css(stylesheet = "shiny", directory = "www", open = FALSE)

}
