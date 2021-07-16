library(shiny)
library(gapminder)
library(stargazer)
data("gapminder")



ui<-fluidPage(
               
  titlePanel(em("Welcome to the Gapminder Shiny App!")),
  
  sidebarLayout(
    
    sidebarPanel(sliderInput("LE", "Life Expectancy", min=20, max=85,
                              value = c(48,60), post = "years"),
                 
                 radioButtons("Cont","Continent", choices = c("Africa",
                              "Americas","Asia","Europe","Oceania"),
                              selected = "Africa"),
                 
                 numericInput("obs", "Observations:", min = 1, max = 100, 
                              value =  10),
                 
                 selectInput("CountryInput","Country",
                             choices = c("Benin","Rwanda","Ghana"),
                             selected = "Ghana")),
    
    mainPanel(plotOutput("coolplot"), 
              
              br(),
              
              tableOutput("results")
              
              )
    )
)



server<-function(input,output){
  
  output$coolplot<-renderPlot({hist(rnorm(input$obs),pch=20,col="red")})
  
  output$results<-renderTable({stargazer(lm(rnorm(input$LE[1])~1),
                                         type = "text")})

}

shinyApp(ui=ui, server = server)










































































































































































































