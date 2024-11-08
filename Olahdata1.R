# Load the data
data <- read.csv("C:/Users/PC-Labcom-11/Downloads/supermarket sales.csv")

# Total sales by branch
sales_by_branch <- aggregate(data$Total, by = list(data$Branch), FUN = sum)
colnames(sales_by_branch) <- c("Branch", "Total_Sales")
print("Total Sales by Branch:")
print(sales_by_branch)

# Total sales by product line
sales_by_product_line <- aggregate(data$Total, by = list(data$Product.line), FUN = sum)
colnames(sales_by_product_line) <- c("Product_line", "Total_Sales")
print("Total Sales by Product Line:")
print(sales_by_product_line)

# Total sales by customer type and gender
sales_by_customer_gender <- aggregate(data$Total, by = list(data$Customer.type, data$Gender), FUN = sum)
colnames(sales_by_customer_gender) <- c("Customer_Type", "Gender", "Total_Sales")
print("Total Sales by Customer Type and Gender:")
print(sales_by_customer_gender)

# Display insights in the console
cat("\n--- Summary ---\n")
cat("\nTotal Sales by Branch:\n")
print(sales_by_branch)
cat("\nTotal Sales by Product Line:\n")
print(sales_by_product_line)
cat("\nTotal Sales by Customer Type and Gender:\n")
print(sales_by_customer_gender)
