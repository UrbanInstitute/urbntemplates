#' use_instructions
#'
#' Adds instructions for constructed templates.
#'
#' @param name A character string for the name of the created template. Current
#'   options are `"web_report"`.
#'
#' @md
#' @export
use_instructions <- function(instructions) {

  if (instructions %in% c("web_report")) {

    template_name <- paste0(instructions, "_instructions.md")

  } else {

    stop("Invalid 'instructions' argument. Valid instructions are: ",
         "web_report",
         call. = FALSE)

  }

  usethis::use_template(
    template = template_name,
    save_as = template_name,
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )
}
