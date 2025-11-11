library(shiny)

ui <- fluidPage(
  titlePanel("Religion and Violent Crime"),
  tabsetPanel(id="myTabs",
    tabPanel("Tab 1 Title", h2("Content for Tab 1")),
    tabPanel("Tab 2 Title", h2("Content for Tab 2")),
    tabPanel("Tab 3 Title", h2("Content for Tab 3")),
    tabPanel("Tab 4 Title", h2("Content for Tab 4")),
  )
)

server <- function(input, output, session) {
}

shinyApp(ui=ui, server=server)
