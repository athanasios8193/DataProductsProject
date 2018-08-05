library(shiny)
library(dplyr)

shinyServer(function(input, output) {
        
        lebron <- read.csv("./Data/lebron.csv")
        lebron <- lebron[lebron$GS==1, ]
        
        output$distPlot <- renderPlot({
    
        df <- select(lebron, G, input$statistic)
        meanstat <- mean(df[,2], na.rm=T)
        plot(df, pch=19)
        abline(h = meanstat, lwd=2, col="red")
        title("Lebron James 2013-2014 Statistics by Game")
    
        })
        output$statavg <- renderText({
                df <- select(lebron, G, input$statistic)
                meanstat <- mean(df[,2], na.rm=T)
                paste("The mean of the statistic is ", round(meanstat,3))
        })
})
