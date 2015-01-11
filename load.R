getData <- function() {    
    if(!file.exists("household_power_consumption.txt")) {
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="household_power_consumption.zip", method="curl")
        unzip('household_power_consumption.zip')
    }
    
    filteredLines <- grep('^[1-2]/2/2007|^Date', readLines("household_power_consumption.txt"), value=TRUE)
    customClasses <- c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
    
    data <- read.table(textConnection(filteredLines), colClasses=customClasses, header=TRUE, sep=";", na.strings = "?")
    
    data$Time <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y%H:%M:%S")
    data$Date <- as.Date(data$Date, format="%d/%m/%Y")
    
    data
}
