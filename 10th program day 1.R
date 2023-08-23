# Given data
speed_data <- c(78.3, 81.8, 82, 74.2, 83.4, 84.5, 82.9, 77.5, 80.9, 70.6)

# Calculate Interquartile Range (IQR)
q1 <- quantile(speed_data, 0.25)
q3 <- quantile(speed_data, 0.75)
iqr <- q3 - q1

# Calculate Standard Deviation
sd_speed <- sd(speed_data)

print(paste("Interquartile Range (IQR):", iqr))
print(paste("Standard Deviation:", sd_speed))

