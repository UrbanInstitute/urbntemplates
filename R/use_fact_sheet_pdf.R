#' use_fact_sheet_pdf
#'
#' Adds an R Markdown template for creating PDF fact sheets at the Urban
#'   Institute. For more information,
#'   [read here](https://medium.com/@urban_institute/iterated-pdfs-with-r-markdown-144e2a6d6a1a).
#'
#' @param name A character string for the name of the created template. Be sure
#'   to end the name with ".Rmd".
#' @param directory A character string for the directory where the template
#'   should be saved.
#'
#' @md
#' @export
use_fact_sheet_pdf <- function(name = "fact_sheet_pdf.Rmd", directory = NULL) {

  if (!is.null(directory)) {

    usethis::use_directory(directory)
    save_name <- paste0(directory, "/", name)

  } else {

    save_name <- name

  }

  usethis::use_template(
    template = "fact_sheet_pdf.Rmd",
    save_as = save_name,
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )
}
