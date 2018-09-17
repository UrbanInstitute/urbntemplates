#' use_fact_sheet_html
#'
#' Adds an R Markdown template for creating html fact sheets at the Urban
#'   Institute. For more information,
#'   [read here](https://medium.com/@urban_institute/iterated-fact-sheets-with-r-markdown-d685eb4eafce).
#'
#' @param name A character string for the name of the created template. Be sure
#'   to end the name with ".Rmd".
#' @param directory A character string for the directory where the template
#'   should be saved.
#'
#' @md
#' @export
use_fact_sheet_pdf <- function(name = "fact_sheet_html.Rmd", directory = NULL) {

  if (!is.null(directory)) {

    usethis::use_directory(directory)
    save_name <- paste0(directory, "/", name)

  } else {

    save_name <- name

  }

  usethis::use_template(
    template = "fact_sheet_html.Rmd",
    save_as = save_name,
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )
}
