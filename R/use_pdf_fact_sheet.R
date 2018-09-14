#' use_pdf_fact_sheet
#'
#' @param name A character string for the name of the created template. Be sure
#'   to end the name with ".Rmd".
#' @param directory A character string for the directory where the template
#'   should be saved.
#'
#' @md
#' @export
use_pdf_fact_sheet <- function(name = "pdf_fact_sheet.Rmd", directory = NULL) {

  if (!is.null(directory)) {

    usethis::use_directory(directory)
    save_name <- paste0(directory, "/", name)

  } else {

    save_name <- name

  }

  usethis::use_template(
    template = "pdf_fact_sheet.Rmd",
    save_as = save_name,
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )
}
