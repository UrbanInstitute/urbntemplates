#' use_content
#'
#' Adds content to the specified directory.
#'
#' @param content A character string for the name of the content. The only
#'   only option is "header image".
#'
#' @md
#' @export
use_content <- function(content) {

  if (content == "header image") {

    if (!dir.exists("www")) {
      dir.create("www")
    }

    if (!dir.exists("www/images")) {
      dir.create("www/images")
    }

    img_data <- magick::image_read(system.file("content/urban-institute-logo.png", package = "urbntemplates"))

    magick::image_write(img_data, "www/images/urban-institute-logo.png")

  }  else {

    stop("Invalid 'preamble' argument. Valid stylesheets are: ",
         "fact_sheet",
         call. = FALSE)

  }
}
