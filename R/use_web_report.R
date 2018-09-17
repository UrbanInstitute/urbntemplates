#' use_web_report
#'
#' Adds a web report template to the specified directory.
#'
#' @param name A character string for the name of the created template.
#' @param directory A character string for the directory where the template
#'   should be saved.
#'
#' @md
#' @export
use_web_report <- function(name = "web_report.Rmd", directory = NULL) {

  if (!is.null(directory)) {

    usethis::use_directory(directory)
    save_name <- paste0(directory, "/", name)

  } else {

    save_name <- name

  }

  if (!dir.exists("www")) {
    dir.create("www")
  }

  if (!dir.exists("www/images")) {
    dir.create("www/images")
  }

  usethis::use_template(
    template = "urban-institute-logo.png",
    save_as = "www/images/urban-institute-logo.png",
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = FALSE,
    package = "urbntemplates"
  )

  usethis::use_template(
    template = "web_report.Rmd",
    save_as = save_name,
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )
}
