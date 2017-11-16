# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("My liquor webpage"),
  
  sidebarPanel("My side bar"),
  
  mainPanel(plotOutput("hist_content"),
            img(src = "kitten.jpeg"))
)