# load dataset
data<- read.csv('C:\Users\adora\Code\R_Projects\Clean_Dataset.csv')

# Create a contingency table
cont_table <- table(data$airline, data$class)

# Perform Chi-Square test
chi_sq_result <- chisq.test(cont_table)

# Print the results
print(chi_sq_result)

# Extract observed and expected frequencies from the contingency table
observed <- as.vector(cont_table)
expected <- chi_sq_result$expected

# Create a data frame for plotting
plot_data <- data.frame(
  Category = rep(rownames(cont_table), 2),
  Frequency = c(observed, expected),
  Type = rep(c("Observed", "Expected"), each = nrow(cont_table))
)

# Plot the frequencies
library(ggplot2)

ggplot(plot_data, aes(x = Category, y = Frequency, fill = Type)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.9), width = 0.7) +
  labs(title = "Observed vs. Expected Frequencies",
       y = "Frequency",
       fill = "Type") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
