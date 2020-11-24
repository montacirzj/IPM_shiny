#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$ipm_region <- renderPlot({
        ipm_morocco_data %>% filter(annee==2014) %>%
            group_by(region) %>%
            summarise(ipm_regional=mean(as.numeric(IPM) )) %>% 
            ggplot2::ggplot(aes(x=reorder(region,ipm_regional) ,y=ipm_regional,fill=region)) + geom_bar(stat = "identity",na.rm = TRUE) + scale_fill_brewer(palette = 10)+ coord_flip() +    theme(axis.text.y=element_blank(),axis.ticks.y = element_blank(),axis.title.y = element_blank())
            

        # generate bins based on input$bins from ui.R
        # x    <- faithful[, 2]
        # bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        # hist(x, breaks = bins, col = 'darkgray', border = 'white')

    })

})
