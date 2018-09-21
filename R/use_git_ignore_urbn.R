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

ignore <-
"# History files
.Rhistory
.Rapp.history

# Session Data files
.RData

# Example code in package build process
*-Ex.R

# Output files from R CMD build
/*.tar.gz

# Output files from R CMD check
/*.Rcheck/

# RStudio files
.Rproj.user/

# produced vignettes
vignettes/*.html
vignettes/*.pdf

# OAuth2 token, see https://github.com/hadley/httr/releases/tag/v0.3
.httr-oauth

# knitr and R markdown default cache directories
/*_cache/
/cache/

# Temporary files created by R markdown
*.utf8.md
*.knit.md"

  usethis::use_git_ignore(ignore)

  # pick a gitignore template
  template_name <- if (is.null(gitignore)) {

  } else if (gitignore == "fact_sheet_pdf") {

    usethis::use_git_ignore("*.aux")
    usethis::use_git_ignore("*.out")

  }else if (gitignore %in% c("shiny", "fact_sheet_html", "web_report")) {

    # usethis::use_git_ignore()

  } else {

    stop("Invalid 'gitignore' argument. Valid 'gitignore' options are: ",
         "'shiny', 'fact_sheet_html', 'fact_sheet_pdf', 'web_report'",
         call. = FALSE)

  }
}
