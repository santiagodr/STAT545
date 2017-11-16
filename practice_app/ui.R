# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("My liquor webpage"),
  
  sidebarPanel("My side bar",
               
               sliderInput("priceIn", "Price of booze",
                           min = 0, max = 300, 
                           value = c(10,20), pre = "CAD"),
               
               radioButtons("typeIn", "What kind of booze?",
                            choices = c("BEER", "SPIRITS", "WINE"),
                            selected = c("SPIRITS"))
               ),
  
  mainPanel(plotOutput("hist_content"),
            plotOutput("hist_price"),
            br(), br(),
            img(src = "kitten.jpeg", width = "50%"),
            br(),
            tableOutput("table_head"))
)