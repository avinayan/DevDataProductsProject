library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Developing Data Products - Project"),
  sidebarPanel(
    h3('Inputs'),
    numericInput('GirthInput', 'Girth :', 80, min = 50, max = 110, step = 2),
    numericInput('HeightInput', 'Height :', 50, min = 10, max = 90, step = 4),
    submitButton('Submit'),
    h3('Documentation on How to Use:'),
    h6("1. Change the Girth-width / Radius of the tree through 'Girth' input box."),
    h6("2. Change the Height of the tree through 'Height' input box."),
    h6("3. Hit Submit to view the  prediction based on the new inputs.")
  ),
  mainPanel(
    h3('Tree Volume Prediction'),
    h4('Girth (you entered) :'),
    verbatimTextOutput("inputValueGirth"),
    h4('Height (you entered) :'),
    verbatimTextOutput('inputValueHeight'),
    h4('Volume (prediction) :'),
    verbatimTextOutput('prediction'),
    h3('Dataset and Prediction Documentation:'),
    h6('This project uses trees dataset from the datasets package in R. This dataset contains 31 observations of trees containing their girth-width, height and volume.'),
    h6('Using the Girth-width-squared value and height, a model to predict the trees volume was constructed. In this application, the girth-width and height can be adjusted to predict the volume of the tree.'),
    h6('Observe that the Girth width has a higher degree of impact on the volume of the tree compared to changes in the height.')
  )
))