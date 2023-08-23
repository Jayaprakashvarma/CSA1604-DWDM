# Create a vector with the given data
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

# Calculate mean
mean_pencils <- mean(pencils)

# Calculate median
median_pencils <- median(pencils)

# Calculate mode (using a custom function since base R doesn't have a built-in mode function)
get_mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode_pencils <- get_mode(pencils)

print(paste("Mean:", mean_pencils))
print(paste("Median:", median_pencils))
print(paste("Mode:", mode_pencils))

