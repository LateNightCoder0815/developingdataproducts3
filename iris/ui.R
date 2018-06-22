library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Explore IRIS data set and predict species"),
  
  # Sidebar with a slider input for petal and sepal length
  sidebarLayout(
    sidebarPanel(
       h4('Please set petal and sepal length:'),
       br(),
       sliderInput("petal",
                   "Petal Length:",
                   min = 1,
                   max = 8,
                   value = 4),
       sliderInput("sepal",
                   "Sepal Length:",
                   min = 4,
                   max = 8,
                   value = 6)
    ),
    
    # Show a plot of the dataset highlighting selected point and predict the species
    mainPanel(
       div('The selected values from the left will be displayed in the chart below by a black dot. 
           Additionally, we run a random forest model to predict the species based on your selection.'),
       br(),
       plotOutput("myPlot"),
       br(),
       h4('Predicted species by random forest prediction model:'),
       textOutput("pred")
    )
  )
))
