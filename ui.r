library(shiny)
library(ggvis)
library(ggplot2)

shinyUI(fluidPage(
  titlePanel("Results from the Audited Universities"),
  sidebarLayout(
    sidebarPanel(
      selectInput("University", "Select a University:",
                  choices = c("All", "Bowling Green State University", "Central State University", "Cleveland State University", "Miami University", "Ohio State University", "Ohio University", "Shawnee State University", "University of Akron", "University of Cincinnati", "University of Toledo", "Wright State University", "Youngstown State University")),
      hr()
    ),
    mainPanel(
      plotOutput("main_plot")
    )
  )
 
)
        
        )