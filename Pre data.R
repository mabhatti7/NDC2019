dataset <- read.csv("C:/Users/Administrator/Desktop/2019_dataset_en.csv")


# Calculate the total number of collisions
total_collisions <- nrow(dataset)

# Calculate the number of collisions with no fatality (P_ISEV is not equal to 3)
no_fatality_collisions <- sum(dataset$P_ISEV != 3)

# Calculate the number of collisions with at least one fatality (P_ISEV is 3)
fatality_collisions <- sum(dataset$P_ISEV == 3)

# Calculate the percentage of collisions with no fatality
percentage_no_fatality <- (no_fatality_collisions / total_collisions) * 100

# Calculate the percentage of collisions with at least one fatality
percentage_fatality <- (fatality_collisions / total_collisions) * 100

# Print the results
cat("Percentage of collisions with no fatality:", round(percentage_no_fatality, 2), "%\n")
cat("Percentage of collisions with at least one fatality:", round(percentage_fatality, 2), "%\n")



# Calculate the total number of people involved in the collisions
total_people <- nrow(dataset)

# Calculate the number of people with no injuries (P_ISEV is not equal to "3")
no_injury_people <- sum(dataset$P_ISEV != "2" & dataset$P_ISEV != "3")

# Calculate the number of people who were injured (P_ISEV is "2")
injured_people <- sum(dataset$P_ISEV == "2")

# Calculate the number of people who died with fatality (P_ISEV is "3")
fatality_people <- sum(dataset$P_ISEV == "3")

# Calculate the percentage of people with no injuries
percentage_no_injury <- (no_injury_people / total_people) * 100

# Calculate the percentage of people who were injured
percentage_injured <- (injured_people / total_people) * 100

# Calculate the percentage of people who died with fatality
percentage_fatality <- (fatality_people / total_people) * 100

# Print the results
cat("Percentage of people with no injuries:", round(percentage_no_injury, 2), "%\n")
cat("Percentage of people who were injured:", round(percentage_injured, 2), "%\n")
cat("Percentage of people who died with fatality:", round(percentage_fatality, 2), "%\n")



# Calculate the number of collisions for each day of the week
collisions_by_day <- table(dataset$C_WDAY)

# Create a data frame to store the results
result_df <- data.frame(Day_of_Week = names(collisions_by_day), 
                        Number_of_Collisions = as.vector(collisions_by_day))

# Order the days of the week
result_df$Day_of_Week <- factor(result_df$Day_of_Week, levels = c("1", "2", "3", "4", "5", "6", "7"),
                                labels = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"))

# Print the results
print(result_df)



# Filter out rows with "NN" in C_HOUR
dataset_filtered <- dataset[dataset$C_HOUR != "UU", ]

# Convert C_HOUR to numeric to ensure correct ordering of hours
dataset_filtered$C_HOUR <- as.numeric(dataset_filtered$C_HOUR)

# Count the number of collisions for each hour
collisions_per_hour <- table(dataset_filtered$C_HOUR)

# Print the results
print(collisions_per_hour)





# Convert C_MNTH to numeric to ensure correct ordering of months
dataset_filtered$C_MNTH <- as.numeric(dataset_filtered$C_MNTH)

# Create a vector of month names in the correct order
month_names <- c("January", "February", "March", "April", "May", "June",
                 "July", "August", "September", "October", "November", "December")

# Count the number of collisions for each month
collisions_per_month <- table(factor(dataset_filtered$C_MNTH, levels = 1:12, labels = month_names))

# Print the number of collisions for each month
print(collisions_per_month)

max(collisions_per_month)
min(collisions_per_month)






# Get the count of collisions for each unique value in C_VEHS
vehs_counts <- table(dataset$C_VEHS)

# Create a data frame to store the results
vehs_count_df <- data.frame(VehicleCount = as.numeric(names(vehs_counts)),
                            Count = as.numeric(vehs_counts))

# Print the C_VEHS count data frame
print(vehs_count_df)



# Get the count of each unique value in C_VEHS
vehs_counts <- table(dataset$C_VEHS)

# Calculate the total number of accidents
total_accidents <- sum(vehs_counts)

# Calculate the percentage of each unique value in C_VEHS
percentage_1 <- (vehs_counts[1] / total_accidents) * 100
percentage_2 <- (vehs_counts[2] / total_accidents) * 100
percentage_3 <- (vehs_counts[3] / total_accidents) * 100

# Print the percentages
cat("Percentage of accidents with C_VEHS = 1:", percentage_1, "%\n")
cat("Percentage of accidents with C_VEHS = 2:", percentage_2, "%\n")
cat("Percentage of accidents with C_VEHS = 3:", percentage_3, "%\n")


# Get the count of collisions for each unique value in V_TYPE
vtype_counts <- table(dataset$V_TYPE)

# Create a data frame to store the results
vtype_count_df <- data.frame(VehicleType = as.character(names(vtype_counts)),
                             Count = as.numeric(vtype_counts))

# Print the V_TYPE count data frame
print(vtype_count_df)
max(vtype_count_df$Count)





# Get the count of collisions for each unique value in C_CONF
conf_counts <- table(dataset$C_CONF)

# Create a data frame to store the results
conf_count_df <- data.frame(Config = as.character(names(conf_counts)),
                            Count = as.numeric(conf_counts))

# Print the C_CONF count data frame
print(conf_count_df)
max(conf_count_df$Count)





# Filter the dataset to include only rows where C_SEV is equal to 1
dataset_filtered <- subset(dataset, P_ISEV == "3")

# Get the count of collisions for each unique value in C_CONF when C_SEV is equal to 1
conf_counts <- table(dataset_filtered$C_CONF)

# Create a data frame to store the results
conf_count_df <- data.frame(Config = as.character(names(conf_counts)),
                            Count = as.numeric(conf_counts))

# Print the C_CONF count data frame when C_SEV is equal to 1
print(conf_count_df)

# Find the row with the maximum count
max_count_row <- conf_count_df[which.max(conf_count_df$Count), ]

# Print the row with the maximum count along with its Config
print(max_count_row)





# Get the count of collisions for each unique value in C_PCFG
rcfg_counts <- table(dataset$C_RCFG)

# Create a data frame to store the results
pcfg_count_df <- data.frame(RCFG = as.character(names(rcfg_counts)),
                            Count = as.numeric(rcfg_counts))

# Print the C_PCFG count data frame
print(pcfg_count_df)



# Get the count of collisions for each unique value in C_WTHR
wthr_counts <- table(dataset$C_WTHR)

# Create a data frame to store the results
wthr_count_df <- data.frame(WeatherCondition = as.character(names(wthr_counts)),
                            Count = as.numeric(wthr_counts))

# Print the C_WTHR count data frame
print(wthr_count_df)



# Get the count of collisions for each unique value in C_RSUR
rsur_counts <- table(dataset$C_RSUR)

# Create a data frame to store the results
rsur_count_df <- data.frame(RoadSurfaceCondition = as.character(names(rsur_counts)),
                            Count = as.numeric(rsur_counts))

# Print the C_RSUR count data frame
print(rsur_count_df)




# Get the count of collisions for each unique value in C_RALN
raln_counts <- table(dataset$C_RALN)

# Create a data frame to store the results
raln_count_df <- data.frame(RoadAlignment = as.character(names(raln_counts)),
                            Count = as.numeric(raln_counts))

# Print the C_RALN count data frame
print(raln_count_df)



# Get the count of collisions for each unique value in C_TRAF
traf_counts <- table(dataset$C_TRAF)

# Create a data frame to store the results
traf_count_df <- data.frame(TrafficControlDevice = as.character(names(traf_counts)),
                            Count = as.numeric(traf_counts))

# Print the C_TRAF count data frame
print(traf_count_df)




# Get the count of collisions for each unique value in P_SEX
sex_counts <- table(dataset$P_SEX)

# Create a data frame to store the results
sex_count_df <- data.frame(Sex = as.character(names(sex_counts)),
                           Count = as.numeric(sex_counts))

# Print the P_SEX count data frame
print(sex_count_df)


# Filter the dataset to include only rows where P_ISEV is equal to 3
dataset_filtered <- subset(dataset, P_ISEV == "3")

# Get the count of collisions for each unique value in P_SEX when P_ISEV is equal to 3
sex_counts <- table(dataset_filtered$P_SEX)

# Create a data frame to store the results
sex_count_df <- data.frame(Sex = as.character(names(sex_counts)),
                           Count = as.numeric(sex_counts))

# Print the P_SEX count data frame when P_ISEV is equal to 3
print(sex_count_df)


# Get the count of collisions for each unique value in P_AGE
age_counts <- table(dataset$P_AGE)

# Create a data frame to store the results
age_count_df <- data.frame(Age = as.character(names(age_counts)),
                           Count = as.numeric(age_counts))

# Print the P_AGE count data frame
print(age_count_df)


# Get the count of collisions for each unique value in P_PSN
psn_counts <- table(dataset$P_PSN)

# Create a data frame to store the results
psn_count_df <- data.frame(P_PSN = as.character(names(psn_counts)),
                           Count = as.numeric(psn_counts))

# Print the P_PSN count data frame
print(psn_count_df)




# Filter the dataset to include only rows where P_ISEV is equal to 3
dataset_filtered <- subset(dataset, P_ISEV == "3")

# Get the count of collisions for each unique value in P_PSN when P_ISEV is equal to 3
psn_counts <- table(dataset_filtered$P_PSN)

# Create a data frame to store the results
psn_count_df <- data.frame(P_PSN = as.character(names(psn_counts)),
                           Count = as.numeric(psn_counts))

# Print the P_PSN count data frame when P_ISEV is equal to 3
print(psn_count_df)




# Get the count of collisions for each unique value in P_SAFE
safe_counts <- table(dataset$P_SAFE)

# Create a data frame to store the results
safe_count_df <- data.frame(P_SAFE = as.character(names(safe_counts)),
                            Count = as.numeric(safe_counts))

# Print the P_SAFE count data frame
print(safe_count_df)


# Filter the dataset to include only rows where P_ISEV is equal to 3
dataset_filtered <- subset(dataset, P_ISEV == "3")

# Get the count of collisions for each unique value in P_SAFE when P_ISEV is equal to 3
safe_counts <- table(dataset_filtered$P_SAFE)

# Create a data frame to store the results
safe_count_df <- data.frame(P_SAFE = as.character(names(safe_counts)),
                            Count = as.numeric(safe_counts))

# Print the P_SAFE count data frame when P_ISEV is equal to 3
print(safe_count_df)



# Get the count of collisions for each unique value in P_USER
user_counts <- table(dataset$P_USER)

# Create a data frame to store the results
user_count_df <- data.frame(P_USER = as.character(names(user_counts)),
                            Count = as.numeric(user_counts))

# Print the P_USER count data frame
print(user_count_df)



# Filter the dataset to include only rows where P_ISEV is equal to 3
dataset_filtered <- subset(dataset, P_ISEV == "3")

# Get the count of collisions for each unique value in P_USER when P_ISEV is equal to 3
user_counts <- table(dataset_filtered$P_USER)

# Create a data frame to store the results
user_count_df <- data.frame(P_USER = as.character(names(user_counts)),
                            Count = as.numeric(user_counts))

# Print the P_USER count data frame when P_ISEV is equal to 3
print(user_count_df)




