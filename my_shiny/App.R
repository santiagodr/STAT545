library(shiny)
library(stringr)

my_ui <- fluidPage(
  h1("This is my very first website"),
  h2("including a subtitle"),
  "And some more information (body of my website)",
  textInput("My_Text_In", "Enter some text here"),
  "This is my output text",
  br(),
  textOutput("your_text")
)

my_server <- function(input, output){
  output$your_text <- renderText({
    str_to_upper(input$My_Text_In)
  })
}

shinyApp(ui = my_ui, server = my_server)
