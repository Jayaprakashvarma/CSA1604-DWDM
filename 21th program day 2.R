# Sample data
data <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18)

# (i) Equal-frequency partitioning
bin_count <- 3
partitions <- cut(data, breaks = bin_count, labels = FALSE)

# (ii) Data smoothing using bin means
bin_means <- tapply(data, partitions, mean)
smoothed_data <- bin_means[partitions]

# (iii) Plot Histogram
hist(data, main = "Histogram of Data", xlab = "Value", ylab = "Frequency", col = "lightblue")
