# Shiny application using Ozone dataset

For a direct access to this Shiny application, click [here](https://coursera-student.shinyapps.io/coursera-shiny/).

This README file is the supporting documentation accompagning this Shiny application. It includes three parts: 

1. Instructions given for this project
2. Description of this Shiny application
3. Directives on how to visualize this Shiny application

### 1. Instructions given for this project

1. Write a shiny application with associated supporting documentation (**this README file**). The documentation should be thought of as whatever a user will need to get started using your application. 
2. Deploy the application on Rstudio's shiny server.
3. Share the application link by pasting it into the text box below. 
4. Share your server.R and ui.R code on github. 

The application must include the following:

1. Some form of input (widget: textbox, radio button, checkbox, ...).
2. Some operation on the ui input in sever.R.
3. Some reactive output displayed as a result of server calculations.
4. You must also include enough documentation so that a novice user could use your application.
5. The documentation should be at the Shiny website itself. Do not post to an external link.


The Shiny application in question is entirely up to you. However, if you're having trouble coming up with ideas, you could start from the simple prediction algorithm done in class and build a new algorithm on one of the R datasets packages. Please make the package simple for the end user, so that they don't need a lot of your prerequisite knowledge to evaluate your application. You should emphasize a simple project given the short time frame.  


### 2. Description of this Shiny application
This Shiny application uses the "Ozone" dataset that is part of the "ElemStatLearn" library. It contains 4 variables and 111 entries.

```
> dim(ozone)
[1] 111   4

> head(ozone)
  ozone radiation temperature wind
1    41       190          67  7.4
2    36       118          72  8.0
3    12       149          74 12.6
4    18       313          62 11.5
5    23       299          65  8.6
6    19        99          59 13.8
```

This Shiny application displays a scatterplot of the relationship between each of the variables based on a X- and a Y-variable that the user specifies from the drop down menu (sidebar panel). Additionally to the scatterplot, a loess curve is added to the plot.


### 3. Directives on how to visualize this Shiny application

Option 1: Direct link: click [here](https://coursera-student.shinyapps.io/coursera-shiny/). 

Option 2: Download the `server.R` and `ui.R` files. Open R and set the working directory to be inside the folder that contains both files. Then run the following commands:

```
library(shiny)
runApp()
```