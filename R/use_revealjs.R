#' use_revealjs
#'
#' @param name A character string for the name of the created template.
#' @param directory A character string for the directory where the template
#'   should be saved.
#'
#' @md
#' @export
use_revealjs <- function(name = "revealjs.Rmd", directory = NULL) {

  if (!is.null(directory)) {

    usethis::use_directory(directory)
    save_name <- paste0(directory, "/", name)

  } else {

    save_name <- name

  }

  usethis::use_template(
    template = "revealjs.Rmd",
    save_as = save_name,
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )
}
