# Age and %fat data (replace with actual data)
age <- c(...)
percent_fat <- c(...)

# Calculate mean
mean_age <- mean(age)
mean_percent_fat <- mean(percent_fat)

# Calculate median
median_age <- median(age)
median_percent_fat <- median(percent_fat)

# Calculate standard deviation
sd_age <- sd(age)
sd_percent_fat <- sd(percent_fat)

print("Mean Age:", mean_age)
print("Median Age:", median_age)
print("Standard Deviation Age:", sd_age)

print("Mean %Fat:", mean_percent_fat)
print("Median %Fat:", median_percent_fat)
print("Standard Deviation %Fat:", sd_percent_fat)
# Create boxplot for age
boxplot(age, main="Boxplot of Age")

# Create boxplot for %fat
boxplot(percent_fat, main="Boxplot of %Fat")
# Create scatter plot
plot(age, percent_fat, main="Scatter Plot", xlab="Age", ylab="%Fat")

# Create Q-Q plot for age
qqnorm(age)
qqline(age, col = 2)

# Create Q-Q plot for %fat
qqnorm(percent_fat)
qqline(percent_fat, col = 2)
