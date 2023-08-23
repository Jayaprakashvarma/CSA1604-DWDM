# Given data
age_data <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# Calculate the positions for Q1 and Q3
total_data_points <- length(age_data)
q1_position <- (total_data_points + 1) / 4  # 25% of data
q3_position <- 3 * q1_position  # 75% of data

# Find the values at the approximate positions
q1 <- age_data[ceiling(q1_position)]
q3 <- age_data[ceiling(q3_position)]

print(paste("Approximate First Quartile (Q1):", q1))
print(paste("Approximate Third Quartile (Q3):", q3))
