#' use_css
#'
#' `use_css` adds a Cascading Style Sheet (CSS) to the specified directory
#'
#' @param stylesheet Selection of stylesheet. Current options are `"shiny"`.
#' @param directory The directory where the template should be saved and opened.
#'   The default "www/" is preferable for most projects. Use NULL to save the
#'   template to the project directory or working directory.
#'
#' @md
#' @export
use_css <- function(stylesheet, directory = "www/") {

  # pick a stylesheet template
  template_name <- if (stylesheet %in% c("shiny")) {

    paste0(stylesheet, ".css")

  } else {

    stop("Invalid 'stylesheet' argument. Valid stylesheets are: ",
         "shiny",
         call. = FALSE)

  }

  # pick a destination directory
  save_name <- if (is.null(directory)) {

    template_name

  } else {

    if (!dir.exists(directory)) {
      dir.create(directory)
    }

    paste0(directory, template_name)

  }

  # add template to destination
  use_template(
    template = template_name,
    save_as = save_name,
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )

}