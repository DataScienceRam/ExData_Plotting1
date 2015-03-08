source("commonFunctions.R")

# call function to read data and filter the needed data
data <- createDataSet("household_power_consumption.txt")

# create the graph
plot(data$Global_active_power~data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

#write to file
createPlot("plot2.png")