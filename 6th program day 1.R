# Given value
value <- 35

# Min-Max Normalization
min_value <- 0
max_value <- 1
minmax_normalized <- (value - min_value) / (max_value - min_value)

print(paste("Min-Max Normalized value:", minmax_normalized))

# Z-Score Normalization
mean_age <- 0 # Assume mean of age is 0 for simplicity
std_deviation_age <- 12.94
zscore_normalized <- (value - mean_age) / std_deviation_age

print(paste("Z-Score Normalized value:", zscore_normalized))

# Normalization by Decimal Scaling
power <- floor(log10(max(abs(value)))) + 1
decimal_scaled <- value / (10 ^ power)

print(paste("Normalization by Decimal Scaling:", decimal_scaled))


