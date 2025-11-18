library(shiny)

ui <- fluidPage(
  titlePanel("Religion and Violent Crime"),
  tabsetPanel(id="myTabs",
    tabPanel("Crime Rates by State", h2("Content for Tab 1")),
    tabPanel("Religious Affiliation by State", h2("Content for Tab 2")),
    tabPanel("Medians Across Regions", h2("Content for Tab 3")),
    tabPanel("State Politics", h2("Content for Tab 4")),
    tabPanel("Large Cities", h2("Content for Tab 4")),
    tabPanel("Data Dictionary", 
             h2("Data Dictionary"),
             tableOutput("data_dict")),
  )
)

server <- function(input, output, session) {
  data_dictionary <- data.frame(
    Variable = c("State", "Violentcr", "Chraff", "Nonchraff", "Census_Region", "Median_House_Price", "Median_Income", "Large_City", "Governor", "PercentWhite", "AboveBach", "Unemployment"),
    Description = c("Each of the 50 states in the US, not including Washington DC",
                    "The violent crime rate for a given state per 100,000 residents",
                    "The total percentage of people in a given state that are religiously affiliated with a sect of Christianity",
                    "The total percentage of people in a given state that are religiously affiliated with anything other than Christianity",
                    "Which of the four regions is a given state in based on the national census",
                    "The median total cost of a home in that state",
                    "The overall median income of a given state regardless of the industry",
                    "Whether or not that state has a large metropolitan city",
                    "Whether or not that state has a republican or democratic governor",
                    "The total percentage of white Americans that live in that state",
                    "The total percentage of people that have above a bachelor’s degree in a given state",
                    "The total percentage of unemployment in a given state")
  )
  
  output$data_dict <- renderTable({
    data_dictionary
  })
}

shinyApp(ui=ui, server=server)
