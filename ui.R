pageWithSidebar(
      headerPanel('Motor Trend Car Road Tests k-means clustering'),
      sidebarPanel(
            selectInput('xcol', 'X Variable', names(mtcars)),
            selectInput('ycol', 'Y Variable', names(mtcars),
                        selected=names(iris)[[1]]),
            numericInput('clusters', 'Cluster count', 3,
                         min = 1, max = 9),
            helpText("mpg: Miles/(US) gallon"),
            helpText("cyl: Number of cylinders"),
            helpText("disp: Displacement (cu.in.)"),
            helpText("hp: Gross horsepower"),
            helpText("drat: Rear axle ratio"),
            helpText("wt: Weight (1000 lbs)"),
            helpText("vs: V/S"),
            helpText("am: Transmission (0 = automatic, 1 = manual)"),
            helpText("gear: Number of forward gears"),
            helpText("carb: Number of carburetors")
      ),
      mainPanel(
            plotOutput('plot1')
      )
)