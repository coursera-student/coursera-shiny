library(shiny)

shinyUI(fluidPage(
    
    # title
    headerPanel("Scatterplots"),
    
    sidebarLayout(
        
        sidebarPanel(
            selectInput('xcol', 'X-axis value', names(ozone),
                        selected=names(ozone)[[2]]),
            
            selectInput('ycol', 'Y-axis value', names(ozone),
                        selected=names(ozone)[[1]]),
            
            br(),
            
            p("Note:"),
            
            p("This application plots the relationship between ozone, 
              radiation, temperature, and wind. Use the dropdown menu 
              above to make your selection."),
            
            br(),
            
            p("Full documentation for this project can be found on ", 
              a("Github", href = ""))
        ),
        
        mainPanel(
            h3(textOutput("caption")),
            plotOutput('plot')   
        )
    ) 
))