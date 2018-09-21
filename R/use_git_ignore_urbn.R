#' use_git_ignore_urbn
#'
#' Adds a custom .gitignore to the top directory.
#'
#' @param gitignore Selection of .gitignore. Current options are `"shiny"`,
#'   `"fact_sheet_pdf"`, `"fact_sheet_pdf"`, and `"web_report"`. NULL adds a
#'   basic .gitignore for R.
#' @param open Open the newly created file for editing?
#'
#' @md
#' @export
use_git_ignore_urbn <- function(gitignore = NULL, open = FALSE) {

  # add template to destination
  usethis::use_template(
    template = ".gitignore",
    save_as = ".gitignore",
    data = list(Package = "", Version = ""),
    ignore = FALSE,
    open = open,
    package = "urbntemplates"
  )

  # pick a gitignore template
  template_name <- if (is.null(gitignore)) {

  } else if (gitignore %in% c("shiny", "fact_sheet_html", "fact_sheet_pdf", "web_report")) {

    # usethis::use_git_ignore()

  } else {

    stop("Invalid 'gitignore' argument. Valid gitignore options are: ",
         "shiny",
         call. = FALSE)

  }
}
