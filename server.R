library(shiny)

interestAmount <- function(principal,rate,period) (principal * rate * (period/12))/ 100
shinyServer(
  function(input, output) {
    output$principal <- renderPrint({input$principal})
    output$rate <- renderPrint({input$rate})
    output$period <- renderPrint({input$period})
    output$interest <- renderPrint({interestAmount(input$principal,input$rate,input$period)})
  }
)