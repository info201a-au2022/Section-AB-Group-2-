# Install and load the shiny package
install.packages("shiny")
library(shiny)

# Define the user interface for the shiny app
ui <- navbarPage(
  # Add a title to the app
  title = "NBA-height7",
  
  # Define the introduction page
  tabPanel("Introduction",
    fluidPage(
      # Add a title to the page
      titlePanel("Introduction"),
      
      # Add some text to the page
      fluidRow(
        column(12,
          h3("Analysis of Height in the NBA"),
          p("While all sports have their physical requirements, in the NBA, height is one of the key physical requirements for players in any position. Height not only gives basketball players an advantage in terms of shooting but also helps defensive players keep the ball out of the hoop."),
          p("We will be analyzing the increase in average height in the NBA, and how it affects other potential basketball players from achieving their dreams of becoming professional NBA basketball players.")
        )
      )
    )
  ),
  
  # Add the main page to the app
  tabPanel("Main",
    fluidPage(
      # Add a title to the page
      titlePanel("My Shiny Website"),
      
      # Define the layout of the page
      sidebarLayout(
        # Add a sidebar panel
        sidebarPanel(
          # Add an input to allow the user to enter text
          textInput("text", "Enter text:", "Hello, World!")
        ),
        
        # Add a main panel to display the output
        mainPanel(
          # Add an output to display the entered text
          verbatimTextOutput("text_output")
        )
      )
    )
  ),
  
  # Define the problem domain page
  tabPanel("Problem Domain",
    fluidPage(
      # Add a title to the page
      titlePanel("Problem Domain"),
      
      # Add some text to the page
      fluidRow(
        column(12,
          h3("The Problem Domain"),
          p("With the popularity basketball, and the success of NBA commercialization, the NBA is getting more and more attention. Many young people want to become professional basketball players, but there are no quantitative criteria to assess whether they can be a basketball player. We hope to collect and compile the height and weight of NBA players over the past 20 years and observe the changes."),
          h3("Stakeholders"),
          p("Direct stakeholder: Someone who wishes to become a basketball player. The possible benefit is to help them determine their career direction earlier. The possible disadvantage is that the transparency may increase the competition in the NBA draft."),
          p("Indirect stakeholder: The viewers. The possible benefit is that they can see a more watchable game.")
        )
      )
    )
  )
)

  chart_1 <- tabPanel(
    "Average height of NBA draft players each year". 
    fluidPage(
      titlePanel("Select Year Widget"), 
      sidebarLayout( 
        sidebar_panel_widget2
        main_panel_plot2
        )
      )
    )
  )

  chart_2 <- tabPanel(
    "Average Height Change Per Position Each Year From NBA Draft" 
    fluidPage(
      titlePanel("Select Year Widget"), 
      sidebarLayout(
        sidebar_panel_widget3
        main_panel_plot3
        )
      )
    )
  )

  chart 3 <- tabPanel(
    "Number Of Players In Each Position In NBA Draft" 
    fluidPage(
      titlePanel("Select Player Widget"), 
      sidebarLayout( 
        sidebar_panel_widget4
        main_panel_plot4
        )
      )
    )
  )

# Define the server logic for the shiny app
server <- function(input, output) {
  # Output the entered text
  output$text_output <- renderPrint({
    input$text
  })
}

# Run the shiny app
shinyApp(ui = ui, server = server)
