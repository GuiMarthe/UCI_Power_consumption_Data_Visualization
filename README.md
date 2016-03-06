# Visualizations for Individual household electric power consumption Data Set 
## 1. Introduction

This work performs de data manipulation and plotting of some key variables in the "Individual household electric power consumption" Data Set available in the UCI ML repository in this [link](https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption)

**The data is not present in the data folder since it is a massive data set, so please download it from the link just provided and place it in your data folder. **

In this work, we focus on the energy consumption during two specific days, 2007 - February 1st and 2nd.

Variables measured:

1. date: Date in format dd/mm/yyyy 
2. time: time in format hh:mm:ss 
3. global_active_power: household global minute-averaged active power (in kilowatt) 
4. global_reactive_power: household global minute-averaged reactive power (in kilowatt) 
5. voltage: minute-averaged voltage (in volt) 
6. global_intensity: household global minute-averaged current intensity (in ampere) 
7. sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). 
8. sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. 
9. sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

## 2. Plots 

Four plots were created in total and exported as png files and a specific R script with the code used to build them. 

Each script follows the same structure. It reads the household_power_consumption dataset from the data folder, selects the desired days, deletes the original data set (since it is very massive), then proceeds to plot the intended data in the user's screen.

Plot description:

* **plot1.png**: a histogram of the global active power usage during February 1st and 2nd of 2007 in this location.  
* **plot2.png**: a line plot of the global active power usage per minute during February 1st and 2nd of 2007.
* **plot3.png**: a line plot showing the active power usage in each sub metering during February 1st and 2nd of 2007. 
*  **plot4.png**: a four plot dashboard containing the three previous plots and a line plot of the voltage usage per minute during February 1st and 2nd of 2007.

Note that the scripts are commented for better understanding of the steps.



