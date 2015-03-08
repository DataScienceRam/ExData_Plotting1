source("commonFunctions.R")

# call function to read data and filter the needed data
data <- createDataSet("household_power_consumption.txt")

# create the graph
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

#write to file
createPlot("plot1.png")