shinyUI(pageWithSidebar(
    headerPanel("Random Normal Distribution"),
    sidebarPanel(
        h2('Select (n)'),
        helpText("A larger n will provide a more gaussian look to the histogram."),
        sliderInput('n', 'Qty of Numbers', value = 5000, min = 1000, max = 10000, step = 500),
        h2('Select (mu)'),
        helpText("A larger mu will simply shift the horizontal axis."),
        sliderInput('mu', 'Select a mean', value = 0, min = 0, max = 100, step = 1),
        h2('Select (sd)'),
        helpText("A larger sd will spread the distribution more widely on the horizontal axis."),
        sliderInput('sd', 'Standard Deviation', value = 1, min = 1, max = 20, step = 1)
    ),
    mainPanel(
        tabsetPanel(
            tabPanel("Plot", plotOutput("newHist")),
            tabPanel("Instructions", verbatimTextOutput("notes")),
            tabPanel("Documentation",
                 HTML("<pre>For complete documentation related to how this new Shiny app was produced with R Studio, please visit my <a href='https://github.com/koolwebdezign/shiny-slider-example' target='new'>GitHub Documentation</a>.</pre>")
            )
        )
    )
))
