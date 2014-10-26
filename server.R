library(shiny)

AvgExpMale <- 69
AvgExpFemale <- 74

shinyServer(
  function(input, output) {
    output$prediction <- renderPrint({
      if (input$goButton == 0)
        return("Please fill in your year of birth and mark your gender")
      input$goButton
      isolate({
            if(input$Gender == '1') {predict <- input$BirthYear + AvgExpMale}
            if(input$Gender == '2') {predict <- input$BirthYear + AvgExpFemale}
        predict
        })
      })

  }
)