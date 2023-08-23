
# Given data
marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

# Calculate number of bins
num_bins <- 3

# (a) Equal-Frequency (Equi-Depth) Partitioning
bin_breaks_eq_freq <- quantile(marks, probs = seq(0, 1, length.out = num_bins + 1))
marks_binned_eq_freq <- cut(marks, breaks = bin_breaks_eq_freq, include.lowest = TRUE)

# (b) Equal-Width Partitioning
bin_width <- (max(marks) - min(marks)) / num_bins
bin_breaks_eq_width <- seq(min(marks), max(marks) + bin_width, by = bin_width)
marks_binned_eq_width <- cut(marks, breaks = bin_breaks_eq_width, include.lowest = TRUE)

# Plot histograms
par(mfrow = c(1, 2))  # Set up a 1x2 grid for two histograms

hist(marks, breaks = bin_breaks_eq_freq, main = "Equal-Frequency Partitioning",
     xlab = "Marks", ylab = "Frequency", col = "lightblue")
abline(v = bin_breaks_eq_freq, col = "red", lwd = 2)

hist(marks, breaks = bin_breaks_eq_width, main = "Equal-Width Partitioning",
     xlab = "Marks", ylab = "Frequency", col = "lightgreen")
abline(v = bin_breaks_eq_width, col = "red", lwd = 2)
