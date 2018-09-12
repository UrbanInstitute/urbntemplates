#' use_iterate
#'
#' `use_iterate` adds a template called iterate.R that is used for iterating
#'   fact cheets across tibbles
#'
#' @md
#' @export
use_iterate <- function() {
  use_template(
    template = "iterate.R",
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )
}
