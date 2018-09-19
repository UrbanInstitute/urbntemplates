#' use_readme_urbn
#'
#' Adds an Urban Institute specific README.
#'
#' @param name Name of analysis to put at top of README
#'
#' @md
#' @export
use_readme_urbn <- function(name = "README") {
  usethis::use_template(
    template = "README.md",
    data = list(Package = name, Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )
}
