# Sales Analysis Script

# Load necessary libraries
library(dplyr)
library(ggplot2)

# Load the data
data <- read.csv("C:\Users\PC-Labcom-11\Downloads\supermarket_sales.csv")

# Total sales by branch
sales_by_branch <- data %>%
  group_by(Branch) %>%
  summarise(Total_Sales = sum(Total))

# Total sales by product line
sales_by_product_line <- data %>%
  group_by(Product.line) %>%
  summarise(Total_Sales = sum(Total))

# Total sales by customer type and gender
sales_by_customer_gender <- data %>%
  group_by(Customer.type, Gender) %>%
  summarise(Total_Sales = sum(Total))

# Plot: Sales by Branch
ggplot(sales_by_branch, aes(x = Branch, y = Total_Sales, fill = Branch)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Sales by Branch", x = "Branch", y = "Total Sales")

# Plot: Sales by Product Line
ggplot(sales_by_product_line, aes(x = reorder(Product.line, Total_Sales), y = Total_Sales, fill = Product.line)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Sales by Product Line", x = "Product Line", y = "Total Sales") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Plot: Sales by Customer Type and Gender
ggplot(sales_by_customer_gender, aes(x = Customer.type, y = Total_Sales, fill = Gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Sales by Customer Type and Gender", x = "Customer Type", y = "Total Sales")