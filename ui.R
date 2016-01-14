library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria (Antecedente)", style ="color:#297418;"), 
                       choices =  vec_aux1[3:41]), tableOutput("Octubre")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria (Consecuente)", style = "color:#dd21d5;"), 
                       choices =vec_aux1[3:41]), tableOutput("Octubre2"))
    
    
  ), 

  titlePanel("Octubre"),
  sidebarLayout(
    sidebarPanel( "Resumen Octubre",
                  style = "color:#2183dd;",
                  tableOutput("confidenceOctubre"),
                  tableOutput("liftOctubre")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1Octubre"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1Octubre"),
                  textOutput("tablanamecat2Octubre"),
                  textOutput("tablaprobcat2Octubre"),
                  textOutput("tablanamecat3Octubre"),
                  textOutput("tablaprobcat3Octubre"),
                  textOutput("tablanamecat4Octubre"),
                  textOutput("tablaprobcat4Octubre"),
                  textOutput("tablanamecat5Octubre"),
                  textOutput("tablaprobcat5Octubre")),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1Octubre"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1Octubre"),
                  textOutput("tabla1namecat2Octubre"),
                  textOutput("tabla1probcat2Octubre"),
                  textOutput("tabla1namecat3Octubre"),
                  textOutput("tabla1probcat3Octubre"),
                  textOutput("tabla1namecat4Octubre"),
                  textOutput("tabla1probcat4Octubre"),
                  textOutput("tabla1namecat5Octubre"),
                  textOutput("tabla1probcat5Octubre"))
  )
  
  
))
