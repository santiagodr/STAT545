# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("My liquor webpage"),
  
  sidebarPanel("My side bar"),
  
  plotOutput("hist_content")
)