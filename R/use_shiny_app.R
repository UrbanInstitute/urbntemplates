#' use_shiny_app
#'
#' @export
#'
use_shiny_app <- function() {
  use_template(
    template = "app.R",
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )
}
