source("load.R")

png(file="plot4.png", width=480, height=480, bg="transparent")

par(mfrow=c(2,2))

with(getData(), {
    
    plot(Time, Global_active_power, type="l", ylab="Global Active Power", xlab="")
    
    plot(Time, Voltage, type="l", ylab="Voltage", xlab="datetime")
    
    plot(Time, Sub_metering_1, type="l", ylab="Energy sub metering",  xlab="")
    
    lines(Time, Sub_metering_2, type="l", col="red")
    lines(Time, Sub_metering_3, type="l", col="blue")
    
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, bty="n")
    
    plot(Time, Global_reactive_power, type="l", xlab="datetime")
})

dev.off()