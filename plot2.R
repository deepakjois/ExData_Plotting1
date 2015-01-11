source("load.R")

png(file="plot2.png", width=480, height=480, bg="transparent")
with(getData(), plot(Time, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()