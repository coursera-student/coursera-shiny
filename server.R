library(shiny)
library(ggplot2)
library(ElemStatLearn) # data(ozone)

shinyServer(function(input, output, session) {
    
    # Compute the formula text in a reactive expression since it is 
    # shared by the output$xcol and output$ycol functions
    formulaText <- reactive({
        paste(input$ycol, "versus", input$xcol)
    })
    
    # Return the formula text for printing as a caption
    output$caption <- renderText({
        formulaText()
    })
    
    # Combine the selected variables into a new data frame
    selectedData <- reactive({
        ozone[, c(input$xcol, input$ycol)]
    })
    
    # plot to be displayed
    output$plot <- renderPlot({
        p <- ggplot(selectedData(), 
                    aes_string(x=input$xcol, y=input$ycol)) +
            geom_point() +
            geom_smooth()
        
        print(p)
        
    })
    
})

