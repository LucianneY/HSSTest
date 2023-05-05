#Rscript Documentation
#Overview
Rscript_test.R is a script that demonstrates basic data visualization using ggplot2 library in R programming language. The script creates two types of charts: a scatter plot and a bar chart.

#Requirements
Before running the script, you should have the following installed:

R programming language (version 3.0.0 or higher)
ggplot2 library (version 3.3.3 or higher)
#Usage
To use this script, follow these steps:

Open R console or RStudio.
Load the required libraries by running library(ggplot2).
Run the Rscript_test.R script using the source() function, or by opening the file in RStudio and clicking the "Run" button.
Inputs
The script takes no external inputs. Instead, it uses the mtcars dataset that comes with R.

#Outputs
The script creates two charts and saves them as PNG files in the working directory:

A scatter plot showing the relationship between a car's horsepower and its miles per gallon.
A bar chart showing the average miles per gallon for each number of cylinders.
Customization
You can customize the charts by modifying the ggplot() function arguments in the code. For example, you can change the title, axis labels, colors, or themes of the charts. You can also use a different dataset by modifying the data() function argument.

#Troubleshooting
If you encounter any errors while running the script, make sure that you have the required libraries installed and loaded. Check that your working directory is set correctly, and that the PNG files are being saved in the expected location. If you are still having issues, refer to the R documentation or seek help from the R community.
