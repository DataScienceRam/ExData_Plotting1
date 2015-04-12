source("commonFunctions.R")

# call function to read data and filter the needed data
# Please open common Functions.R for filter conditions.
data <- createDataSet("household_power_consumption.txt")

# create the graph
with(data, {
    plot(Sub_metering_1~Datetime, type="l",
         ylab="Global Active Power (kilowatts)", xlab="", col="Black")
    lines(Sub_metering_2~Datetime,col='Red')
    lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


#write to file
createPlot("plot3.png")