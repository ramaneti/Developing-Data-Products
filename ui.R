library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Simple Interest Calculator"),
    sidebarPanel(
      sliderInput('principal', 'What amount of money is loaned or borrowed?(this is the principal amount) $', 1000, min = 100, max = 1000000, step = 100),
      sliderInput('rate', 'What is the interest rate (in percent) attached to this money?', 5.0, min = 1.0, max = 15.0, step = 0.1),
      sliderInput('period', 'After how much time (months) do you want to know what your interest will be?', 12, min = 6, max = 120, step = 6),
      submitButton('Calculate the Interest Amount')
    ),
    mainPanel(
      h3('Results of Calculation'),
      h4('You entered'),
      h4('Principal $'),
      verbatimTextOutput("principal"),
      h4('Rate %'),
      verbatimTextOutput("rate"),
      h4('Period (months)'),
      verbatimTextOutput("period"),
      h4('Which resulted in an interest amount of $'),
      verbatimTextOutput("interest")
    )
  )
)