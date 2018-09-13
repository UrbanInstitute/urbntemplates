#' use_shiny_app
#'
#' `use_shiny_app` adds a template called app.R for creating R Shiny
#'   applications. There is no name argument because the Urban Institute Shiny
#'   server expects app.R.
#'
#' @md
#' @export
use_shiny_app <- function() {
  usethis::use_template(
    template = "app.R",
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = TRUE,
    package = "urbntemplates"
  )
}
