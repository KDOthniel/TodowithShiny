library(shiny)
library(gapminder)
data("gapminder")



ui<-fluidPage(h1("My Shiny app"),
              h3("I love doing this"),
              "If you don't want to learn you are dead",
              br(),
              strong("Hello World!"),
  titlePanel("My little world"),
  sidebarLayout(sidebarPanel("This is a side panel"),
                mainPanel("And this is the main Stuff")))

server<-function(input,output){
  
}

shinyApp(ui=ui, server = server)





