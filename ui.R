library(shiny)
library(datasets)
require(markdown)

shinyUI(
  
  fluidPage(    
    
    titlePanel("Arrest Rates by US State, 1973"),
    
    sidebarLayout(      
      
      sidebarPanel(
        selectInput("variable", "Variable", 
                    choices=colnames(USArrests)),
        hr(),
        helpText("Violent Crime Rates by US State")
      ),
      
      mainPanel(
        tabsetPanel(
          tabPanel("Documentation",includeMarkdown("documentation.md"))
        ),
        plotOutput("arrestPlot")
      )
    )
  )
)