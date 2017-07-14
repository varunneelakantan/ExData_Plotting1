#Load data

source("LoadData.R")

#Define the plot layout

par(mfrow=c(2,2))

with(data, plot(Time, Global_active_power,
                type="l",
                xlab="",
                ylab="Global Active Power",
                cex.lab = 0.7, cex.axis= 0.8))

with(data, plot(Time, Voltage, 
                         type="l",
                         xlab="datetime", ylab="Voltage", 
                         cex.lab=0.7, cex.axis=0.8
))

plot(data$Time, data$Sub_metering_1, 
     type="l", ylab="Energy sub metering", xlab="", cex.lab=0.7, cex.axis=0.8)
lines(data$Time, data$Sub_metering_2, col="red")
lines(data$Time, data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), col=c("black","red", "blue"), cex=0.7, bty="n")

with(data, plot(Time, data$Global_reactive_power, 
                         type="l",lwd=0.5,
                         xlab="datetime", ylab="Global_reactive_power", 
                         cex.lab=0.7, cex.axis=0.8))

dev.copy(png,'plot4.png',  width = 960, height = 480)
dev.off()