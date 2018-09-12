#
# This is a Shiny web application. You can run the application by clicking
# the "Run App" button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# set shiny options
options(shiny.sanitize.errors = TRUE)
options(scipen = 999)

# create user interface
ui <- fluidPage(

  # make sure shiny.css is in www/
  # if not, delete the following line
  theme = "shiny.css",

)

# create server session
server <- function(input, output) {

}

# build shiny application
shinyApp(ui = ui, server = server)
