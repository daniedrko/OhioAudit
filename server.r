library(shiny)
library(magrittr)
library(dplyr)

load("results.rdata")

shinyServer(function(input, output) {
  output$main_plot <- renderPlot(function() {
    if(input$University != "All") {
      ggplot(subset(results, University == input$University), aes(factor(RequestOutcome))) + 
        geom_bar(stat = "bin", aes(fill = factor(Records))) +
        xlab("Outcome of Record Requests") +
        ylab("Number of Requests") +
        scale_fill_manual(values = c("#1C122F", "#A738DE", "#0373D4", "#98AB01", "#EF5900"), guide = guide_legend(NULL))
    }
    else {
      ggplot(results, aes(factor(RequestOutcome))) +
        geom_bar(stat = "bin", aes(fill = factor(Records))) +
        xlab("Outcome of Record Requests") +
        ylab("Number of Requests") +
        scale_fill_manual(values = c("#1C122F", "#A738DE", "#0373D4", "#98AB01", "#EF5900"), guide = guide_legend(NULL))
    }
  }
    
  )
}
  )