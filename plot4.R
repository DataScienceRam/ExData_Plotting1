source("commonFunctions.R")

# call function to read data and filter the needed data
data <- createDataSet("household_power_consumption.txt")

#define the layout
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

# create the graph
with(data, {
    #Graph 1
    plot(Global_active_power~Datetime, type="l", 
         ylab="Global Active Power", xlab="")

    #Graph 2
    plot(Voltage~Datetime, type="l", 
         ylab="Voltage", xlab="Datetime")

    #Graph 3
    plot(Sub_metering_1~Datetime, type="l", 
         ylab="Energy Sub Metering", xlab="")
    lines(Sub_metering_2~Datetime,col='Red')
    lines(Sub_metering_3~Datetime,col='Blue')
    legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

    #Graph 4
    plot(Global_reactive_power~Datetime, type="l", 
         ylab="Global_rective_power",xlab="Datetime")
})


#write to file
createPlot("plot4.png")