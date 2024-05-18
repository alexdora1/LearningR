# Load necessary package
library(ggplot2)

# View the first few rows of the mtcars dataset
head(mtcars)

# Create a scatter plot with LSRL
plot <- ggplot(data = mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "blue", size = 3) +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(title = "Scatter Plot of Horsepower vs. Miles Per Gallon with LSRL",
       x = "Horsepower",
       y = "Miles Per Gallon (mpg)") +
  theme_minimal()

# Print the plot
print(plot)

# Perform linear regression
model <- lm(mpg ~ hp, data = mtcars)

# Print the regression output
summary(model)
