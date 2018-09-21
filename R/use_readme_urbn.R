#' use_readme_urbn
#'
#' Adds an Urban Institute specific README.
#'
#' @param name Name of analysis to put at top of README
#'
#' @md
#' @export
use_readme_urbn <- function(name = "README", open = TRUE) {
  usethis::use_template(
    template = "README.md",
    data = list(Package = name, Version = ""),
    ignore = FALSE,
    open = open,
    package = "urbntemplates"
  )
}
