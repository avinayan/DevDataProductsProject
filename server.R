library(datasets)
library(shiny)

treesdata <- trees
treesdata$GirthSquared <- treesdata$Girth^2
modelfit <- lm(Volume ~ GirthSquared + Height, data = treesdata)

shinyServer(
  function(input, output) {
    output$inputValueGirth <- renderPrint({input$GirthInput})
    output$inputValueHeight <- renderPrint({input$HeightInput})
    output$prediction <- renderPrint({predict(modelfit, data.frame(GirthSquared = input$GirthInput^2, Height = input$HeightInput))[1]})
  }
)