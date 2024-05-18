# Create a fictional dataset
city <- c("City A", "City A", "City A", "City B", "City B", "City B")
transport_mode <- c("Car", "Public Transit", "Bicycle", "Car", "Public Transit", 
                    "Bicycle")
observed <- c(40, 30, 20, 35, 25, 15) # Observed frequencies
expected <- c(35, 30, 20, 40, 25, 15) # Expected frequencies

# Calculate Chi-Square statistic manually
chi_sq_statistic <- sum((observed - expected)^2 / expected)
df <- length(observed) - 1
p_value <- 1 - pchisq(chi_sq_statistic, df)

# Print results
print(paste("Chi-Square Statistic:", chi_sq_statistic))
print(paste("Degrees of Freedom:", df))
print(paste("P-value:", p_value))

