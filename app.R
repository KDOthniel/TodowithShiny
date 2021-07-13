library(shiny)
library(gapminder)
data("gapminder")



ui<-fluidPage( em("Add several more strings to fluidPage and run the app.
               Nothing too exciting is happening yet, but you should just see all 
               the text in one contiguous block."),
               
  titlePanel("Welcome to the Gapminder Shiny App!"),
  
  sidebarLayout(sidebarPanel("This is a our side Panel"),
                mainPanel(strong("And this is the main Stuff!"))))

server<-function(input,output){
  
}

shinyApp(ui=ui, server = server)





