library(taucharts)
data("mtcars")
library(dplyr)

# Selecting two columns from mtcars 
mtcars <- select(mtcars, wt, mpg) %>%
  # Adding a model column with mutate
  mutate(
    model = row.names(mtcars)
  )

# Graphing the first line below sets the data source
tauchart(mtcars) %>%
  # Graph points with weight on the x-axis and mpg on the y-axis
  tau_point("wt","mpg") %>%
  #Add tooltip
  tau_tooltip() %>%
  #Add trendline options
  tau_trendline()
