---
title       : "IRIS data set"
subtitle    : "Explore and predict species"
author      : "LateNightCoder0815"
job         : "22. June 2018"
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : prettify  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

<style>
.title-slide {
  background-color: #add8e6; 
}
</style>

## Task

- Build a shiny application having the following properties
- Some user input widgets (e.g. slider)
- Reactive output displayed in the app
- Directly included documentation

--- 
## Dataset

We use the iris data set to build our web application. We performed the following exploratory data analysis on the data (code is embedded).

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png)

--- 
## Solution

- Interactive web app to set petal and sepal length
- User input gets displayed in the graph
- User can evaluate the result in the diagram
- A random forest model is build to predict the species according to the input provided by the user

--- 
## Links

- Link to the webapp: https://latenightcoder0815.shinyapps.io/iris/
- Link to the github repo: https://github.com/LateNightCoder0815/developingdataproducts3
- Information on the data set: https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/iris.html



