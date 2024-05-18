# Load necessary package
library(ggplot2)

# View the first few rows of the mtcars dataset
head(mtcars)

# Create a scatter plot
ggplot(data = mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Scatter Plot of Horsepower vs. Miles Per Gallon",
       x = "Horsepower",
       y = "Miles Per Gallon (mpg)") +
  theme_minimal()