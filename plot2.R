#Load data

source("LoadData.R")

with(data, plot(Time, Global_active_power, 
                type = "l", 
                xlab = "",
                ylab = "Global Active Power (in Kilowatts)",
                cex.lab=0.7, cex.axis= 0.8))

#Save plot
dev.copy(png, 'plot2.png', width = 480, height = 480)
dev.off()


      

