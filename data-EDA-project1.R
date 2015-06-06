##-----------------------------------------------------------------------------
##                        Exploratory Data Analysis 
##                            Course Project 1 
##-----------------------------------------------------------------------------
##                          data-EDA-project1.R
##-----------------------------------------------------------------------------
##  This main script must be executed -> FIRST <- in order to download 
##  the input data file for this project and create a working data frame  
##  required for all subsequent scripts/functions to create graphs.
##-----------------------------------------------------------------------------


##-----------------------------------------------------------------------------
## Step 1.10: Prepare working environment 
##-----------------------------------------------------------------------------

## getwd() 

library(data.table)
library(dplyr)
library(lubridate)

##-----------------------------------------------------------------------------
## Step 1.20: Create a project directory to hold both input data & output data 
##-----------------------------------------------------------------------------

if(!file.exists("./EDAProject1")){
  dir.create("./EDAProject1")
}

##-----------------------------------------------------------------------------
## Step 1.30: Download the zipped input data file from given link - 19.7 MB
##-----------------------------------------------------------------------------

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

download.file(url,destfile="./EDAProject1/Dataset.zip", mode="wb")

##-----------------------------------------------------------------------------
## Step 1.40: Unzip the input data file into a project directory 
##-----------------------------------------------------------------------------

unzip(zipfile="./EDAProject1/Dataset.zip",exdir="./EDAProject1")

##-----------------------------------------------------------------------------
## Step 2.00: Read input data file into a data frame (2,075,259 rows, 9 columns) 
##-----------------------------------------------------------------------------

dt <- read.table("./EDAProject1/household_power_consumption.txt", 
                  sep = ";",
                  stringsAsFactors = FALSE,
                  header=TRUE)

## class(dt) dim(dt) names(dt) summary(dt) str(dt) head(dt,5)

## [1] "Date"     "Time"        "Global_active_power" "Global_reactive_power"
## [5] "Voltage"  "Global_intensity"  "Sub_metering_1"      "Sub_metering_2"       
## [9] "Sub_metering_3"

##-----------------------------------------------------------------------------
## Step 3.00: Select only 2 specific days (2,880 rows, 9 columns) 
##-----------------------------------------------------------------------------

dt_2d <- filter(dt, as.Date(dt$Date, "%d/%m/%Y") == "2007-02-01" | 
                    as.Date(dt$Date, "%d/%m/%Y") == "2007-02-02")

## class(dt_2d) dim(dt_2d) names(dt_2d) summary(dt_2d) str(dt_2d) head(dt_2d,5)

##-----------------------------------------------------------------------------
## Step 4.00: Release the full data table 
##-----------------------------------------------------------------------------
  
rm(dt) 
