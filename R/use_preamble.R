#' use_preamble
#'
#' Adds a LaTeX preamble to the specified directory
#'
#' @param preamble Selection of preamble. Current options are `"fact_sheet"`.
#' @param directory The directory where the template should be saved and opened.
#'   The project directory is preferable for most projects. Use NULL to save the
#'   template to the project directory or working directory.
#'
#' @md
#' @export
use_preamble <- function(preamble = "fact_sheet", directory = NULL, open = FALSE) {

  # pick a preamble template
  template_name <- if (preamble %in% c("fact_sheet")) {

    "fact_sheet_preamble.tex"

  } else {

    stop("Invalid 'preamble' argument. Valid stylesheets are: ",
         "fact_sheet",
         call. = FALSE)

  }

  # pick a destination directory
  if (!is.null(directory)) {

    usethis::use_directory(directory)
    save_name <- paste0(directory, "/", template_name)

  } else {

    save_name <- template_name

  }

  # add template to destination
  usethis::use_template(
    template = template_name,
    save_as = save_name,
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = open,
    package = "urbntemplates"
  )

}
