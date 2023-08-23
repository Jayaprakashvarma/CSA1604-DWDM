A)# Given data
data <- c(200, 300, 400, 600, 1000)

# Min-max normalization
min_value <- min(data)
max_value <- max(data)
normalized_data_minmax <- (data - min_value) / (max_value - min_value)

print("Min-Max Normalized Data:")
print(normalized_data_minmax)

B)# Z-score normalization
mean_value <- mean(data)
std_deviation <- sd(data)
normalized_data_zscore <- (data - mean_value) / std_deviation

print("Z-Score Normalized Data:")
print(normalized_data_zscore)

