#' use_css
#'
#' Adds a Cascading Style Sheet (CSS) to the specified directory
#'
#' @param stylesheet Selection of stylesheet. Current options are `"shiny"`,
#'   `"web_report"`, and `"revealjs"`.
#' @param directory The directory where the template should be saved and opened.
#'   The default "www" is preferable for most projects. Use NULL to save the
#'   template to the project directory or working directory.
#' @param open Open the newly created file for editing?
#'
#' @md
#' @export
use_css <- function(stylesheet, directory = "www", open = FALSE) {

  # pick a stylesheet template
  template_name <- if (stylesheet %in% c("shiny", "web_report", "revealjs")) {

    paste0(stylesheet, ".css")

  } else {

    stop("Invalid 'stylesheet' argument. Valid stylesheets are: ",
         "shiny, web_report, revealjs",
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
