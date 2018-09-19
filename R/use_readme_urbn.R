#' use_readme_urbn
#'
#' @md
#' @export
use_readme_urbn <- function() {
  usethis::use_template(
    template = "README.md",
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )
}
