shinyUI(fluidPage(
        titlePanel(strong("Monthly Mortgage Payment Calculator")),
        hr(),
        sidebarLayout(
                sidebarPanel(
                        numericInput('cost', 'Cost of Home (In USD)', 405000),
                        sliderInput('downpayment', label="Downpayment",min=0, max=50, value=20, post="%"),
                        numericInput('interest',label="Interest rate", 3.625),
                        sliderInput('term', label="Term", min=0, max=30, value=15, post=" years")
                ),
                mainPanel(
                        strong(h3("Results and Explanation", align="center")),
                        br(),
                        p("This is a mortgage payment calculator.",
                          strong("It excludes PMI, homeowner's insurance, and any taxes.")),
                        p("You can type in your", code("home cost"), "and use any of the sliders to adjust your", code("downpayment"), ", your", code("interest rate"), ", and your", code("term"), ". The calculation is automatically re-evaluated as you adjust each input."),
                        p("The code for the", strong("UI"), "and the", strong("calculations"), "are displayed to the right and can be moved to the bottom by clicking on the buttom to show it below."),
                        withMathJax(p("The formula used to calculate this amount is"), 
                                    h3("$$\\left(\\text{Principal}\\right)\\frac{\\text{(Interest rate)}(1+\\text{Interest rate})^\\text{Term}}{(1+\\text{Interest rate})^\\text{Term}-1}$$")),
                        hr(),
                        h4('Your monthly mortgage payment is:', align="center"),
                        h4(strong(textOutput("text1"), align="center"))
                )
        )
)
)


