# Developing-Data-Products
Developing Data Products Course Projects: Shiny Application and Reproducible Pitch
========================================================
author: Rama Neti
date:   19th May 2016

Objective
========================================================

- 1. Create a Shiny application and deploy it on Rstudio's servers 
- 2. ui.R, Server.R and Rpres files are available on [Github Repository](https://github.com/ramaneti/Developing-Data-Products)
- 3. Use Rstudio Presenter to prepare a reproducible pitch presentation about the Shiny application (http://rpubs.com/ramaneti/182507)
- 4. Use Rstudio Presenter slides are used to display R code and Plot using MTCARS data set

Shiny Application: Interactive Simple Interest Calculator
========================================================

- The calculator provides slider input widgets for users to enter (1) Principal Amount (2) Interest Rate and (3) Period (Number of months) in the **sidebar panel**
- The values selected by user are displayed in the main panel along with the calculated interest rate
- server.R contains the function interestAmount for interest calculation using the formula (principal * rate * period/12)/100
- ui.R has slider input controls with min, max, default and step values for prinical, rate and period, text output windows and a submit button
- The minimum, maximum, step and default values for the inputs are as follows:
  Principal Amount (min = $100, max = $1000000, step = $100, default = 1000); Interest Rate (min = 1.0%, max = 15.0%, step = 0.1%, daefault = 5.0%); **Time Period** (min = 6 months, max = 120 months, step = 6 months)
- The reactive output** of interest amount is displayed as a result of server calculations
