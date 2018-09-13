#' use_iterate
#'
#' `use_iterate` adds a template called iterate.R that is used for iterating
#'   fact cheets across tibbles
#'
#' @param directory A character string for the directory where the template
#'   should be saved.
#'
#' @md
#' @export
use_iterate <- function(directory = NULL) {

  if (!is.null(directory)) {

    usethis::use_directory(directory)
    save_name <- paste0(directory, "/iterate.R")

  } else {

    save_name <- "iterate.R"

  }

  usethis::use_template(
    template = "iterate.R",
    save_as = save_name,
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )
}
