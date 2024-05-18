# load dataset
data<- read.csv('C:\Users\adora\Code\R_Projects\Clean_Dataset.csv')

# Create a contingency table
cont_table <- table(data$airline, data$class)

# Perform Chi-Square test
chi_sq_result <- chisq.test(cont_table)

# Print the results
print(chi_sq_result)