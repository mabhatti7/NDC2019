# NDC2019
National Collision Database 2019

Python code is in EDA.ipynb for Exploratory data analysis (EDA) for raw data. use google colb to run code and make sure the NCD.csv in the same folder.

Result can me seen from NDC_profiling_report EDA.html

From EDA its shows 557 Duplicate rows but further exploring data in R by viewing the data and searching the row came to know the these duplicate are actually same case no but have different vehicles no. so no need to eliminate them as its represent a accident on individual  base (with respect to ) on vehicles.

To see unique case id run code from "R Code.R" run line 1 to 3. make sure to adjust the root directory for NCD.csv.
Further investigating it shows 788 observations duplicates but by viewing the data it shows it V_ID has value 99 in all observations  which is represent to pedestrians in different cases . So no need to remove duplicates. Run code from "R Code.R"  line 8 to 10.

Run "R Code.R"  line 14 to 175 for all variable unique values their occurrence and bar charts.

C_MNTH, C_WDAY and C_SEV have mix type of so to fix it run code from "R Code.R"  line 179 to 181.

Convert all char variable to catagoical variable for further investigate. Run code from "R Code.R"  line 184 to 193.

Removing  C_YEAR and C_CASE variables from the dataset as all record is from 2019 and case id is not important for our ananlysis. Run code from "R Code.R"  line 196 to 199.

Check the category count of C_SEV for checking class balancing. Run code from "R Code.R"  line 202 to 204.

Since C_SEV class is imbalaned. Run code from "R Code.R"  line 206 to 220 to balanced data. 

Clustering techniques can be employed to group vulnerable road users based on similarities in their characteristics and collision patterns. By applying clustering algorithms like k-means or hierarchical clustering, you can identify distinct clusters of road users with similar profiles. This can provide insights into different subgroups of vulnerable road users and their unique characteristics. Code.R"  line 275 to 311.

Predictive modeling can be used to understand the factors that contribute to collisions involving vulnerable road users. By building predictive models, you can identify the variables (characteristics) that are most strongly associated with collisions. Techniques such as logistic regression or decision trees can be employed to predict the likelihood of collisions based on the characteristics of vulnerable road users.  Run code from "R Code.R"  line 225 to 249.

Classification techniques can help classify vulnerable road users into different groups based on their characteristics and collision involvement. For instance, you can use a machine learning algorithm like Random Forest or Support Vector Machines to classify road users as high-risk or low-risk based on their demographic attributes, transportation mode, and other relevant variables. Run code from "R Code.R"  line 252 to 270.

For Data Pre-Processing secition see Pre data.Rmd and the knit result can be seen in Pre data.html.
For exploratory data analysis see Association.Rmd and the knit result can be seen in Association.html.
