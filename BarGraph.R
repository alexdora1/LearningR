#R Demo Project 1

# Load necessary package
library(ggplot2)

# View the first few rows of the mtcars dataset
head(mtcars)

# Create a bar graph using ggplot2
ggplot(data = mtcars, aes(x = factor(cyl))) +
  geom_bar(fill = "blue", color = "black") +
  labs(title = "Count of Cars by Number of Cylinders",
       x = "Number of Cylinders",
       y = "Count of Cars") +
  theme_minimal()