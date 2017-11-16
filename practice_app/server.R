# Define server logic required to draw a histogram
server <- function(input, output) {
  bcl_data <- read_csv("bcl-data.csv")
  filtered <- reactive({
    bcl_data %>% 
    filter(Price >= input$priceIn[1],
           Price <= input$priceIn[2],
           Type == input$typeIn)
  })
  
  output$hist_content <- renderPlot({
  filtered() %>% 
    ggplot() + aes(Alcohol_Content) +
    geom_histogram()
  })
  output$table_head <- renderTable({
    filtered() %>% 
      head()
  })
  output$hist_price <- renderPlot({
    bcl_data %>%
      filter(Price < 10000) %>% 
      ggplot() + aes(Price) +
      geom_histogram()
  })
}