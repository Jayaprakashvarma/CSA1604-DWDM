A)data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
bin_size <- 5

# Create bins
bins <- seq(min(data), max(data), by = bin_size)

# Calculate bin means
bin_means <- tapply(data, cut(data, breaks = bins), mean)

print("Smoothing by Bin Mean:")
print(bin_means)

B.# Calculate bin medians
bin_medians <- tapply(data, cut(data, breaks = bins), median)

print("Smoothing by Bin Median:")
print(bin_medians)

C.# Calculate bin boundaries
bin_boundaries <- seq(min(data), max(data) + bin_size, by = bin_size)

print("Smoothing by Bin Boundaries:")
print(bin_boundaries)

