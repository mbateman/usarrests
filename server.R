library(shiny)
library(datasets)

shinyServer(function(input, output) {
  output$arrestPlot <- renderPlot({
    barplot(USArrests[,input$variable], 
            main=input$variable,
            ylab="Number of Arrests",
            xlab="",
            names.arg=rownames(USArrests),
            col="blue",
            cex.names = 0.7,
            las=2)
  })
})