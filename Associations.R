dataset <- read.csv("C:/Users/Administrator/Desktop/2019_dataset_en.csv")


# Find unique categories in C_SEV and their counts
category_counts <- table(dataset$P_ISEV)

# View the unique categories and their counts
print(category_counts)

# Merge values 1 and 2 to 1 in P_ISEV
dataset$P_ISEV <- ifelse(dataset$P_ISEV %in% c(1, 2), 1, dataset$P_ISEV)

# Assign 2 to all occurrences of 3 in P_ISEV
dataset$P_ISEV <- ifelse(dataset$P_ISEV == 3, 2, dataset$P_ISEV)

# Merge "N" and "U" to 1 in P_ISEV
dataset$P_ISEV <- ifelse(dataset$P_ISEV %in% c("N", "U"), 1, dataset$P_ISEV)

# Find unique categories in C_SEV and their counts
category_counts <- table(dataset$P_ISEV)

# View the unique categories and their counts
print(category_counts)


# Find unique categories in V_YEAR and their counts
category_counts <- table(dataset$V_YEAR)

# View the unique categories and their counts
print(category_counts)

# Group 1918 to 1999 as "20_P" in V_YEAR
dataset$V_YEAR <- ifelse(dataset$V_YEAR >= 1918 & dataset$V_YEAR <= 1999, "20_P", dataset$V_YEAR)

# View the updated dataset
# Find unique categories in V_YEAR and their counts
category_counts <- table(dataset$V_YEAR)

# View the unique categories and their counts
print(category_counts)

# Find unique categories in C_VEHS and their counts
category_counts <- table(dataset$C_VEHS)

# View the unique categories and their counts
print(category_counts)

# Merge 10 and greater to 10 in C_VEHS
dataset$C_VEHS <- ifelse(dataset$C_VEHS >= 10, 10, dataset$C_VEHS)

# Find unique categories in C_VEHS and their counts
category_counts <- table(dataset$C_VEHS)

# View the unique categories and their counts
print(category_counts)

# Find unique categories in P_AGE and their counts
#category_counts <- table(dataset$P_AGE)

# View the unique categories and their counts
#print(category_counts)


# Define the age groups
#R code to merge 0 to 25 to 1 , 26-45 to 2, 46 -65 to 3 ,  66 to 98 to 4, 99 to 5 and keep NN and UU as it is for P_AGE
#dataset$P_AGE <- ifelse(dataset$P_AGE %in% c("NN", "UU"), dataset$P_AGE,
#                        ifelse(dataset$P_AGE >= 0 & dataset$P_AGE <= 25, 1,
#                               ifelse(dataset$P_AGE >= 26 & dataset$P_AGE <= 45, 2,
#                                      ifelse(dataset$P_AGE >= 46 & dataset$P_AGE <= 65, 3,
#                                             ifelse(dataset$P_AGE >= 66 & dataset$P_AGE <= 98, 4,
#                                                    ifelse(dataset$P_AGE == 99, 5, dataset$P_AGE))))))
#

# Find unique categories in P_AGE and their counts
category_counts <- table(dataset$P_AGE)

# View the unique categories and their counts
print(category_counts)

# Define the age groups R code to merge 0 to 25 to 1 , 26-65 to 2 ,  66 to 99 to 3 and keep NN and UU as it is for P_AGE
dataset$P_AGE <- ifelse(dataset$P_AGE %in% c("NN", "UU"), dataset$P_AGE,
                        ifelse(dataset$P_AGE >= 0 & dataset$P_AGE <= 25, 1,
                               ifelse(dataset$P_AGE >= 26 & dataset$P_AGE <= 65, 2,
                                      ifelse(dataset$P_AGE >= 66 & dataset$P_AGE <= 99, 3, dataset$P_AGE))))


# Find unique categories in P_AGE and their counts
category_counts <- table(dataset$P_AGE)

# View the unique categories and their counts
print(category_counts)

# Convert C_SEV to a categorical variable
#dataset$C_SEV <- as.factor(dataset$C_SEV)

# Convert C_VEHS to a categorical variable
#dataset$C_VEHS <- as.factor(dataset$C_VEHS)

dataset <- subset(dataset, select = -c(C_CASE, C_YEAR, V_ID, P_ID, C_SEV))
#dataset <- dataset[!(dataset$C_MNTH %in% c("UU", "XX")), ]
#dataset <- dataset[!(dataset$C_WDAY %in% c("U", "X")), ]
#dataset <- dataset[!(dataset$C_HOUR %in% c("UU", "XX")), ]
# Convert all variables to categorical
dataset[] <- lapply(dataset, as.factor)                        
str(dataset)


# Create a subset of rows with C_SEV category 1
subset_1 <- dataset[dataset$P_ISEV == 2, ]

# Repeat the subset 152 times
repeated_subset_1 <- lapply(1:152, function(x) subset_1)

# Combine the repeated subsets
repeated_rows <- do.call(rbind, repeated_subset_1)

# Add the repeated rows to the dataset
dataset_extended <- rbind(dataset, repeated_rows)

# Check the updated category count of P_ISEV
category_count_updated <- table(dataset_extended$P_ISEV)
print(category_count_updated)
str(dataset_extended)






# Load the necessary packages
library(arules)
library(arulesViz)

# Convert dataset_extended to transactions format
dataset_transactions <- as(dataset_extended, "transactions")

# Apply Apriori algorithm to find association rules with P_ISEV as consequent
association_rules <- apriori(dataset_transactions, parameter = list(support = 0.1, confidence = 0.7, minlen = 2),
                             appearance = list(rhs = "P_ISEV=2"))

# View the association rules
inspect(association_rules)




# Provide the file path and name for the CSV file 
output_file <- "C:/Users/Administrator/Desktop/dataset_extended01.csv"

# Save the dataset_extended as a CSV file
write.csv(dataset_extended, file = output_file, row.names = FALSE)

# Print a message indicating the successful saving of the file
cat("Dataset saved as", output_file, "\n")








str(dataset_extended)
# Load the necessary packages
library(arules)
library(arulesViz)

# Convert dataset_extended to transactions format
transactions <- as(dataset_extended, "transactions")

# Apply Apriori algorithm to find frequent itemsets and association rules
frequent_itemsets <- apriori(transactions, parameter = list(support = 0.1, minlen = 2))
association_rules <- apriori(transactions, parameter = list(support = 0.1, confidence = 0.7, minlen = 2))

# View the frequent itemsets and association rules
inspect(frequent_itemsets)
inspect(association_rules)











# Load the necessary packages
library(arules)
library(arulesViz)

# Convert dataset_extended to transactions format
dataset_transactions <- as(dataset_extended, "transactions")

# Apply Apriori algorithm to find association rules with P_ISEV as consequent
association_rules <- apriori(dataset_transactions, parameter = list(support = 0.1, confidence = 0.7, minlen = 2),
                             appearance = list(rhs = "P_ISEV=2"))

# View the association rules
inspect(association_rules)







# Load necessary packages
library(dplyr)
library(tidyr)
library(ggplot2)
library(caret)

# Prepare the data
dataset_extended <- dataset_extended %>%
  select(P_ISEV, C_MNTH, C_WDAY, C_HOUR, P_AGE, P_SEX, V_TYPE)

# Convert P_ISEV to a binary outcome variable (1 for fatal, 0 for non-fatal)
dataset_extended$P_ISEV <- ifelse(dataset_extended$P_ISEV == "2", 1, 0)

# Convert C_MNTH, C_WDAY, and C_HOUR to numeric variables
dataset_extended$C_MNTH <- as.numeric(as.character(dataset_extended$C_MNTH))
dataset_extended$C_WDAY <- as.numeric(as.character(dataset_extended$C_WDAY))
dataset_extended$C_HOUR <- as.numeric(as.character(dataset_extended$C_HOUR))

# Split data into training and testing sets
set.seed(42)
training_index <- createDataPartition(dataset_extended$P_ISEV, p = 0.7, list = FALSE)
train_data <- dataset_extended[training_index, ]
test_data <- dataset_extended[-training_index, ]

# Build a logistic regression model
logistic_model <- glm(P_ISEV ~ ., data = train_data, family = "binomial")

# Make predictions on the test data
predictions <- predict(logistic_model, newdata = test_data, type = "response")

# Convert probabilities to binary predictions (0 or 1) using a threshold of 0.5
predicted_labels <- ifelse(predictions >= 0.5, 1, 0)

# Evaluate the model performance
confusion_matrix <- confusionMatrix(factor(predicted_labels), factor(test_data$P_ISEV))
print(confusion_matrix)

# Plot the ROC curve
roc_curve <- roc(test_data$P_ISEV, predictions)
plot(roc_curve, main = "ROC Curve", col = "blue")



