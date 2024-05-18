# Sample data
n <- 100  # Sample size
x <- 60   # Number of successes

# Population proportion (hypothesized proportion)
p0 <- 0.5

# Calculate the sample proportion
phat <- x / n

# Calculate the standard error
se <- sqrt(p0 * (1 - p0) / n)

# Calculate the z-test statistic
z <- (phat - p0) / se

# Calculate the p-value for a two-tailed test
p_value <- 2 * (1 - pnorm(abs(z)))

# Print the results
cat("Sample Proportion (phat):", phat, "\n")
cat("Z-test Statistic:", z, "\n")
cat("P-value:", p_value, "\n")

# Conclusion
alpha <- 0.05  # Significance level
if (p_value < alpha) {
  cat("Reject the null hypothesis: The sample proportion is significantly different from the population proportion.\n")
} else {
  cat("Fail to reject the null hypothesis: There is no significant difference between the sample proportion and the population proportion.\n")
}

