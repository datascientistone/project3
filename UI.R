library(shiny)
shinyUI(pageWithSidebar(
  headerPanel(
    h2("Death Year Prediction"),
  ),
      sidebarPanel(
        numericInput('BirthYear', 'In what year you were born?', NULL, min = 1900, max = 2014, step = 1),
        radioButtons("Gender", "Please specify your gender:", selected = NULL,
                     c("Male" = "1", "Female" = "2")),
        actionButton("goButton", "Go!")
        ),
  mainPanel(
    p("This is a simple prediction of a death year, based on input of birth year and gender.",
      "The source code can be found ",a("here",href="http://github.com/michaelstanhope/shiny-examples"),"."),
    h4("How to use this application"),
    p("Enter the birth year and the gender on the left of the page. The predicted death year would show below."),
    h4('Your predicted death year is...'),
    verbatimTextOutput("prediction")
  )
))