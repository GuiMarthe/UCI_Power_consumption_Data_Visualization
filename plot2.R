#### This script will load the data from your data folder and create the plot2.

library(lubridate)
library(dplyr)
library(tidyr)


household_power_consumption <- read.csv("./data/household_power_consumption.txt", sep = ";")

household_power_consumption <- household_power_consumption %>% unite(Date_Time,Date, Time, sep = " ")

household_power_consumption$Date_Time <- dmy_hms(household_power_consumption$Date_Time) 

df <- household_power_consumption[household_power_consumption$Date_Time >= ymd_hms("2007-02-01 00:00:00 UTC") & household_power_consumption$Date_Time <= ymd_hms("2007-02-02 23:59:59 UTC"), ]

df <- cbind(df[1], apply(df[2:8], 2, as.numeric))

rm("household_power_consumption")  # deleting the data from your global environment for memory saving



#### Creating plot2 : Line plot Global Active Power per hour

user.par <- par()

dev.off() #just in case some of the defaults arent set in your software.

plot(df$Date_Time, df$Global_active_power, type = "l", main = "", xlab = "", ylab = "Global Active Power (kilowatts)")

options(warn=-1)
par(user.par)
options(warn=0)
