#install packages
install.packages("dplyr")

# Create a data frame for plotting
data_plot <- data.frame(Transportation_Mode = transport_mode,
                        Observed = observed,
                        Expected = expected)

# Calculate deviations between observed and expected frequencies
data_plot <- data_plot %>%
  mutate(deviation = Observed - Expected)

# Plot observed and expected frequencies with deviations
ggplot(data_plot, aes(x = Transportation_Mode, y = Observed, fill = "Observed")) +
  geom_bar(stat = "identity", position = "dodge", width = 0.5) +
  geom_bar(aes(y = Expected, fill = "Expected"), stat = "identity", position = "dodge", 
           width = 0.5, alpha = 0.5) +
  geom_errorbar(aes(ymin = pmin(Observed, Expected), ymax = pmax(Observed, Expected), 
                    color = "Deviation"), 
                width = 0.2, position = position_dodge(width = 0.5)) +
  labs(title = "Observed vs. Expected Frequencies of Transportation Modes",
       y = "Frequency",
       fill = "") +
  scale_fill_manual(values = c("Observed" = "blue", "Expected" = "green"),
                    name = "Category") +
  scale_color_manual(values = "red",
                     name = "Deviation") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

