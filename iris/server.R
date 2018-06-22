library(shiny)
library(ggplot2)
library(randomForest)

shinyServer(function(input, output) {
  
  ## Fit the model once on petal and sepal length
  fit <- randomForest(Species~ Petal.Length + Sepal.Length,data=iris)
   
  ## Update the plot
  output$myPlot <- renderPlot({
    ggplot(iris, aes(x = Petal.Length, y = Sepal.Length, colour = Species)) + 
      geom_point() +
      ggtitle('Iris species by petal and sepal length') + 
      geom_point(aes(x=input$petal, y=input$sepal), colour="black",size=5)+
      theme_bw()
  })
  
  ## Make predictions on the values set
  output$pred <- renderText({
    newdata <- data.frame(Petal.Length=input$petal, Sepal.Length=input$sepal)
    pred <- predict(fit, newdata)
    levels(pred)[pred]
  })
  
})
