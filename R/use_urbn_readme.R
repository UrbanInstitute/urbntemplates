#' use_urbn_readme
#'
#' @export
#'
use_urbn_readme <- function() {
  use_template(
    template = "README.md",
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )
}
