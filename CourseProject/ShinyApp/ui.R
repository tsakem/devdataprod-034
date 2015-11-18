library(shiny)

shinyUI(pageWithSidebar(
        
        headerPanel("FC Barcelona Statistics for 2015"),
        
        ## Sidebar with a dropdown input
        sidebarPanel(
                selectInput("theplace", "Choose the venue:", 
                            choices = c("Home Matches" = "home",
                                        "Away Matches" = "away")),
                helpText("Note: Choose the venue above in order to see the",
                         "number of goals Barcelona has scored,",
                         "and the results of the games for the 2015 Spanish League.",
                         "THE GAME RESULTS ARE UPDATED AUTOMATICALLY")
                
                ),
        
        
        # Show a plot of the results for the selected years
        mainPanel(
                plotOutput('resultsplot')
        )
))