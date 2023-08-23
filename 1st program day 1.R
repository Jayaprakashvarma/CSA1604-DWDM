# Calculate cumulative frequencies
data$cumulative_frequency <- cumsum(data$frequency)

# Find the interval containing the median
total_frequency <- sum(data$frequency)
median_cf <- total_frequency / 2
median_interval <- data$age[which(data$cumulative_frequency >= median_cf)[1]]

# Calculate the median value within the median interval
median_interval_values <- as.numeric(strsplit(median_interval, "-")[[1]])
median_lower_limit <- median_interval_values[1]
median_upper_limit <- median_interval_values[2]
median_interval_width <- median_upper_limit - median_lower_limit
median_cumulative_frequency_before <- data$cumulative_frequency[which(data$age == median_interval) - 1]
median_frequency_within_interval <- data$frequency[which(data$age == median_interval)]

median <- median_lower_limit + ((median_cf - median_cumulative_frequency_before) / median_frequency_within_interval) * median_interval_width

print(paste("Approximate median value:", median))


