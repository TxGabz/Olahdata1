# Load the data
data <- read.csv("C:/Users/PC-Labcom-11/Downloads/supermarket sales.csv")

# Convert the Date column to Date format
data$Date <- as.Date(data$Date, format = "%m/%d/%Y")

# Calculate the average rating by product line
average_rating_product_line <- aggregate(data$Rating, by = list(data$Product.line), FUN = mean)
colnames(average_rating_product_line) <- c("Product_Line", "Average_Rating")
print("Average Rating by Product Line:")
print(average_rating_product_line)

# Calculate the average spending per transaction
average_spend <- mean(data$Total)
cat("\nAverage Spend per Transaction: ", round(average_spend, 2), "\n")

# Calculate daily sales trend
daily_sales_trend <- aggregate(data$Total, by = list(data$Date), FUN = sum)
colnames(daily_sales_trend) <- c("Date", "Daily_Sales")
print("Daily Sales Trend:")
print(daily_sales_trend)

# Display insights in the console
cat("\n--- Customer Behavior Summary ---\n")
cat("\nAverage Rating by Product Line:\n")
print(average_rating_product_line)
cat("\nAverage Spend per Transaction:\n")
print(round(average_spend, 2))
cat("\nDaily Sales Trend:\n")
print(daily_sales_trend)
