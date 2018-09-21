#' start_project
#'
#' Creates and opens a new project and project dirctory with useful files.
#'
#' @param name Name of the project and the directory.
#' @param path A path from the home directory of the computer to the new
#'   directory you want created.
#' @param readme Add an Urban Institute README to the project
#' @param gitignore Add an R .gitignore to the project
#'
#' @md
#' @export
start_project <- function(name, directory = getwd(), readme = TRUE, gitignore = TRUE) {

  usethis::create_project(paste0(directory, "/", name))

  if (readme == TRUE) {
    use_readme_urbn(name = name, open = FALSE)
  }

  if (gitignore == TRUE) {
    use_git_ignore_urbn(gitignore = NULL, open = FALSE)
  }
}
