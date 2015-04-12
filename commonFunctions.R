# this function is used for all sorts of filtering things.
createDataSet <- function(filename){

	## Get all the contents of the file.
	fullfilecontents <- read.csv( filename, header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

	## Get the data for 2/1 and 2/2
	fullfilecontents$Date <- as.Date(fullfilecontents$Date, format="%d/%m/%Y")

	## Get data 2/1 and 2/2. Get rid of rest of the contents. 
	neededData<- subset(fullfilecontents, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
	rm(fullfilecontents )

	## make date and time as one field.
	datetime <- paste(as.Date(neededData$Date), neededData$Time)
	neededData$Datetime <- as.POSIXct(datetime)

	## return the good data back.
	neededData

}


createPlot <- function(filename){
	# copy the screen contents to file given.
	dev.copy(png, file=filename, height=480, width=480)
	dev.off()
}