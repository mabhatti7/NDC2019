dataset <- read.csv("C:/Users/Administrator/Desktop/2019_dataset_en.csv")
unique_cases <- unique(dataset$C_CASE)
length(unique_cases)


# Find duplicates based on all columns
# Check for duplicates and keep all occurrences
duplicates <- dataset[duplicated(dataset) | duplicated(dataset, fromLast = TRUE), ]
# view the duplicate rows
View(duplicates)


# Check unique values in C_MNTH variable and their occurrence
mnth_counts <- table(dataset$C_MNTH)
# Print the unique values and their occurrence
print(mnth_counts)
barplot(mnth_counts, main = "Occurrences of C_MNTH", xlab = "C_MNTH", ylab = "Count")
# Check unique values in C_WDAY variable and their occurrence
wday_counts <- table(dataset$C_WDAY)
# Print the unique values and their occurrence
print(wday_counts)
# Create a bar chart
barplot(wday_counts, main = "Occurrences of C_WDAY", xlab = "C_WDAY", ylab = "Count")
# Check unique values in C_HOUR variable and their occurrence
hour_counts <- table(dataset$C_HOUR)
# Print the unique values and their occurrence
print(hour_counts)
# Create a bar chart
barplot(hour_counts, main = "Occurrences of C_HOUR", xlab = "C_HOUR", ylab = "Count")


# Check unique values in C_SEV variable and their occurrence
sev_counts <- table(dataset$C_SEV)
# Print the unique values and their occurrence
print(sev_counts)
# Create a bar chart
barplot(sev_counts, main = "Occurrences of C_SEV", xlab = "C_SEV", ylab = "Count")


# Check unique values in C_VEHS variable and their occurrence
vehs_counts <- table(dataset$C_VEHS)
# Print the unique values and their occurrence
print(vehs_counts)
# Create a bar chart
barplot(vehs_counts, main = "Occurrences of C_VEHS", xlab = "C_VEHS", ylab = "Count")


# Check unique values in C_CONF variable and their occurrence
conf_counts <- table(dataset$C_CONF)
# Print the unique values and their occurrence
print(conf_counts)
# Create a bar chart
barplot(conf_counts, main = "Occurrences of C_CONF", xlab = "C_CONF", ylab = "Count")


# Check unique values in C_RCFG variable and their occurrence
rcfg_counts <- table(dataset$C_RCFG)
# Print the unique values and their occurrence
print(rcfg_counts)
# Create a bar chart
barplot(rcfg_counts, main = "Occurrences of C_RCFG", xlab = "C_RCFG", ylab = "Count")


# Check unique values in C_WTHR variable and their occurrence
wthr_counts <- table(dataset$C_WTHR)
# Print the unique values and their occurrence
print(wthr_counts)
# Create a bar chart
barplot(wthr_counts, main = "Occurrences of C_WTHR", xlab = "C_WTHR", ylab = "Count")


# Check unique values in C_RSUR variable and their occurrence
rsur_counts <- table(dataset$C_RSUR)
# Print the unique values and their occurrence
print(rsur_counts)
# Create a bar chart
barplot(rsur_counts, main = "Occurrences of C_RSUR", xlab = "C_RSUR", ylab = "Count")


# Check unique values in C_RALN variable and their occurrence
raln_counts <- table(dataset$C_RALN)
# Print the unique values and their occurrence
print(raln_counts)
# Create a bar chart
barplot(raln_counts, main = "Occurrences of C_RALN", xlab = "C_RALN", ylab = "Count")


# Check unique values in C_TRAF variable and their occurrence
traf_counts <- table(dataset$C_TRAF)
# Print the unique values and their occurrence
print(traf_counts)
# Create a bar chart
barplot(traf_counts, main = "Occurrences of C_TRAF", xlab = "C_TRAF", ylab = "Count")


# Check unique values in V_ID variable and their occurrence
v_id_counts <- table(dataset$V_ID)
# Print the unique values and their occurrence
print(v_id_counts)
# Create a bar chart
barplot(v_id_counts, main = "Occurrences of V_ID", xlab = "V_ID", ylab = "Count")


# Check unique values in V_TYPE variable and their occurrence
v_type_counts <- table(dataset$V_TYPE)
# Print the unique values and their occurrence
print(v_type_counts)
# Create a bar chart
barplot(v_type_counts, main = "Occurrences of V_TYPE", xlab = "V_TYPE", ylab = "Count")


# Check unique values in V_YEAR variable and their occurrence
v_year_counts <- table(dataset$V_YEAR)
# Print the unique values and their occurrence
print(v_year_counts)
# Create a bar chart
barplot(v_year_counts, main = "Occurrences of V_YEAR", xlab = "V_YEAR", ylab = "Count")



# Check unique values in P_ID variable and their occurrence
p_id_counts <- table(dataset$P_ID)
# Print the unique values and their occurrence
print(p_id_counts)
# Create a bar chart
barplot(p_id_counts, main = "Occurrences of P_ID", xlab = "P_ID", ylab = "Count")


# Check unique values in P_SEX variable and their occurrence
p_sex_counts <- table(dataset$P_SEX)
# Print the unique values and their occurrence
print(p_sex_counts)
# Create a bar chart
barplot(p_sex_counts, main = "Occurrences of P_SEX", xlab = "P_SEX", ylab = "Count")


# Check unique values in P_AGE variable and their occurrence
p_age_counts <- table(dataset$P_AGE)
# Print the unique values and their occurrence
print(p_age_counts)
# Create a bar chart
barplot(p_age_counts, main = "Occurrences of P_AGE", xlab = "P_AGE", ylab = "Count")


# Check unique values in P_PSN variable and their occurrence
p_psn_counts <- table(dataset$P_PSN)
# Print the unique values and their occurrence
print(p_psn_counts)
# Create a bar chart
barplot(p_psn_counts, main = "Occurrences of P_PSN", xlab = "P_PSN", ylab = "Count")


# Check unique values in P_ISEV variable and their occurrence
p_isev_counts <- table(dataset$P_ISEV)
# Print the unique values and their occurrence
print(p_isev_counts)
# Create a bar chart
barplot(p_isev_counts, main = "Occurrences of P_ISEV", xlab = "P_ISEV", ylab = "Count")



# Check unique values in P_SAFE variable and their occurrence
p_safe_counts <- table(dataset$P_SAFE)
# Print the unique values and their occurrence
print(p_safe_counts)
# Create a bar chart
barplot(p_safe_counts, main = "Occurrences of P_SAFE", xlab = "P_SAFE", ylab = "Count")


# Check unique values in P_USER variable and their occurrence
p_user_counts <- table(dataset$P_USER)
# Print the unique values and their occurrence
print(p_user_counts)
# Create a bar chart
barplot(p_user_counts, main = "Occurrences of P_USER", xlab = "P_USER", ylab = "Count")


# Convert C_MNTH,C_WDAY and C_SEV column to character
dataset$C_MNTH <- as.character(dataset$C_MNTH)
dataset$C_WDAY <- as.character(dataset$C_WDAY)
dataset$C_SEV <- as.character(dataset$C_SEV)


# Convert variables to categorical except C_YEAR, C_VEHS, and C_CASE
categorical_vars <- c("C_MNTH", "C_WDAY", "C_HOUR", "C_SEV", "C_CONF", "C_RCFG", "C_WTHR", "C_RSUR", "C_RALN", "C_TRAF", "V_ID", "V_TYPE", "V_YEAR", "P_ID", "P_SEX", "P_AGE", "P_PSN", "P_ISEV", "P_SAFE", "P_USER")

for (var in categorical_vars) {
  if (var != "C_YEAR" && var != "C_VEHS" && var != "C_CASE") {
    dataset[[var]] <- as.factor(dataset[[var]])
  }
}
# Verify the changes
str(dataset)

# Remove C_YEAR and C_CASE variables from the dataset
dataset <- dataset[, !colnames(dataset) %in% c("C_YEAR", "C_CASE")]

# Check the structure of the updated dataset
str(dataset)

# Check the category count of C_SEV
category_count <- table(dataset$C_SEV)
# Print the category count
print(category_count)

# Create a subset of rows with C_SEV category 1
subset_1 <- dataset[dataset$C_SEV == 1, ]

# Repeat the subset 60 times
repeated_subset_1 <- lapply(1:60, function(x) subset_1)

# Combine the repeated subsets
repeated_rows <- do.call(rbind, repeated_subset_1)

# Add the repeated rows to the dataset
dataset_extended <- rbind(dataset, repeated_rows)

# Check the updated category count of C_SEV
category_count_updated <- table(dataset_extended$C_SEV)
print(category_count_updated)




install.packages("caTools")
install.packages("caret")
install.packages("glmnet")

# Load the required library
library(caTools)

# Split the dataset into training and testing sets (70% training, 30% testing)
set.seed(123)  # Set a seed for reproducibility
split <- sample.split(dataset_extended$C_SEV, SplitRatio = 0.7)
train_data <- subset(dataset_extended, split == TRUE)
test_data <- subset(dataset_extended, split == FALSE)

# Build a logistic regression model
model <- glm(C_SEV ~ ., data = train_data, family = "binomial")

# Make predictions on the test set
predictions <- predict(model, newdata = test_data, type = "response")

# Convert predicted probabilities to class labels
predicted_classes <- ifelse(predictions > 0.5, 2, 1)

# Calculate the accuracy of the model
accuracy <- mean(predicted_classes == test_data$C_SEV)
cat("Accuracy:", accuracy, "\n")


install.packages("randomForest")
library(caTools)
library(randomForest)

# Split the dataset into training and testing sets (70% training, 30% testing)
set.seed(123)  # Set a seed for reproducibility
split <- sample.split(dataset_extended$C_SEV, SplitRatio = 0.7)
train_data <- subset(dataset_extended, split == TRUE)
test_data <- subset(dataset_extended, split == FALSE)

# Build a Random Forest model
model <- randomForest(C_SEV ~ ., data = train_data)

# Make predictions on the test set
predictions <- predict(model, newdata = test_data)

# Calculate the accuracy of the model
accuracy <- mean(predictions == test_data$C_SEV)
cat("Accuracy:", accuracy, "\n")







install.packages(c("cluster", "factoextra"))

# Load the required libraries
library(cluster)
library(factoextra)

# Select the relevant variables for clustering
selected_vars <- c("C_VEHS", "V_YEAR")

# Subset the dataset with the selected variables
data <- dataset_extended[selected_vars]

# Convert selected variables to numeric
data <- sapply(data, as.numeric)

# Standardize the data
scaled_data <- scale(data)

# Determine the optimal number of clusters using the elbow method
wss <- numeric(10)
for (k in 1:10) {
  kmeans_model <- kmeans(scaled_data, centers = k, nstart = 10)
  wss[k] <- sum(kmeans_model$withinss)
}
plot(1:10, wss, type = "b", xlab = "Number of clusters", ylab = "Within-cluster sum of squares")

# Choose the optimal number of clusters based on the plot

# Perform k-means clustering with the chosen number of clusters
k <- 4  # Update with the chosen number of clusters
kmeans_model <- kmeans(scaled_data, centers = k, nstart = 10)

# Visualize the clustering results
fviz_cluster(kmeans_model, data = scaled_data)

# Access the cluster assignments
cluster_labels <- kmeans_model$cluster


# Provide the file path and name for the CSV file
output_file <- "C:/Users/Administrator/Desktop/dataset_extended.csv"

# Save the dataset_extended as a CSV file
write.csv(dataset_extended, file = output_file, row.names = FALSE)

# Print a message indicating the successful saving of the file
cat("Dataset saved as", output_file, "\n")


