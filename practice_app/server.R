# Define server logic required to draw a histogram
server <- function(input, output) {
  bcl_data <- read_csv("bcl-data.csv")
  
  output$hist_content <- renderPlot({
  bcl_data %>% 
    ggplot() + aes(Alcohol_Content) +
    geom_histogram()
  })
}