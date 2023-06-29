# NDC2019
National Collision Database 2019

Python code is in EDA.ipynb for Exploratory data analysis (EDA) for raw data. use google colb to run code and make sure the NCD.csv in the same folder.

Result can me seen from NDC_profiling_report EDA.html

From EDA its shows 557 Duplicate rows but further exploring data in R by viewing the data and searching the row came to know the these duplicate are actually same case no but have different vehicles no. so no need to eliminate them as its represent a accident on individual  base (with respect to ) on vehicles.

To see unique case id run code from "R Code.R" run line 1 to 3. make sure to adjust the root directory for NCD.csv.
Further investigating it shows 788 observations duplicates but by viewing the data it shows it V_ID has value 99 in all observations  which is represent to pedestrians in different cases . So no need to remove duplicates. Run code from "R Code.R"  line 8 to 10.

Run "R Code.R"  line 14 to 194 for all variable unique values their occurrence and bar charts.

C_MNTH, C_WDAY and C_SEV have mix type of so to fix it run code from "R Code.R"  line 198 to 200.

Convert all char variable to catagoical variable for further investigate. Run code from "R Code.R"  line 204 to 212.

