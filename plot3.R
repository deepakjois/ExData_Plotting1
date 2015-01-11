source("load.R")

png(file="plot3.png", width=480, height=480, bg="transparent")

with(getData(), {

    plot(Time, Sub_metering_1, type="l", ylab="Energy sub metering",  xlab="")

    lines(Time, Sub_metering_2, type="l", col="red")
    lines(Time, Sub_metering_3, type="l", col="blue")

    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           col=c("black", "red", "blue"), lty=1)
})

dev.off()