library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Lebron James 2013-2014 Regular Season Statistics"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
        selectInput("statistic", "Select statistic you want to view:", c("Points" = "PTS", "Field Goals Made" = "FG",
                                                                         "Field Goals Attempted" = "FGA",
                                                                         "Field Goal %" = "FG.", "3 Pointers Made" = "X3P",
                                                                         "3 Pointers Attempted" = "X3PA", "3 Pointers %" = "X3P.",
                                                                         "Free Throws Made" = "FT", "Free Throws Attempted" = "FTA",
                                                                         "Free Throw %" = "FT.", "Offensive Rebounds" = "ORB",
                                                                         "Defensive Rebounds" = "DRB", "Total Rebounds" = "TRB",
                                                                         "Assists" = "AST", "Steals" = "STL", "Blocks" = "BLK",
                                                                         "Turnovers" = "TOV", "Personal Fouls" = "PF", 
                                                                         "Game Score" = "GmSc", "Plus/Minus" = "X...")),
        textOutput("statavg")

),
    # Show a plot of Lebron's chosen statistic by game with his season average
    mainPanel(
       plotOutput("distPlot"),
       h2("Documentation"),
       h4("This Shiny app works by selecting the statistic you want to see from Lebron's 2013-2014 season."),
       h4("Once selected, each game he played in will appear on the plot as a point and his average over the"),
       h4("entire season will show up as a red line. The average of the statistic as a number will appear"),
       h4("underneath the dropdown menu as well.")
       )
  )))