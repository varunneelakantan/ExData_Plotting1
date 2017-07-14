#Load data

source("LoadData.R")


plot(data$Time, data$Sub_metering_1, 
     type="l", 
     xlab = "date$Time",
     ylab="Energy sub metering", 
     cex.lab=0.7)

lines(data$Time, data$Sub_metering_2, col="red")
lines(data$Time, data$Sub_metering_3, col="blue")

legend("topright", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), 
       col=c("black","red", "blue"), 
       cex=0.8)

dev.copy(png,'plot3.png',  width = 960, height = 480)
dev.off()