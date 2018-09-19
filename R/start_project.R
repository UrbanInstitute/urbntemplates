#' start_project
#'
#' Creates and opens a new project and project dirctory with useful files.
#'
#' @param name Name of the project and the directory.
#' @param path A path from the home directory of the computer to the new
#'   directory you want created.
#'
#' @md
#' @export
start_project <- function(name, directory = getwd(), readme = TRUE, git = TRUE) {

  usethis::create_project(paste0(directory, "/", name))

  if (readme == TRUE) {
    use_readme_urbn(name = name)
  }

  if (git == TRUE) {
    usethis::use_git(message = "Initial commit")
  }
}
