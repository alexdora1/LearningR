# Load necessary package
library(ggplot2)

# Create a table of counts for the number of cylinders
cyl_counts <- table(mtcars$cyl)

# Convert the table to a data frame
cyl_df <- as.data.frame(cyl_counts)

# Rename the columns for clarity
colnames(cyl_df) <- c("Cylinders", "Count")

# Create a basic pie chart
pie(cyl_df$Count, labels = cyl_df$Cylinders,
    main = "Proportion of Cars by Number of Cylinders",
    col = rainbow(length(cyl_df$Count)))
