library(shiny)
shinyUI(
  pageWithSidebar(
  headerPanel("Diabetes Prediction"),
  sidebarPanel(
numericInput('glucose','Glucose mg/dl', 90, min=50, max=200
             , step=5)
  ),
  mainPanel(
    h3('Results of prediction'), 
    h4 ('You entered'), 
    verbatimTextOutput("inputValue"), 
    h4('Which resulted in a prediction of'), 
    verbatimTextOutput("prediction")
  )
 )
)