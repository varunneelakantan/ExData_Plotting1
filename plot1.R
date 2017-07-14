#Load data

source("LoadData.R")

with(data, hist(Global_active_power, col="red", breaks = 15, 
                xlab = "Globall Active Power (kilowatts)",
                main = "Global Active Power",
                ylim= c(0,1400)))

#Copy graph to plot1.png file(Will be create if not present)

dev.copy(png,'plot1.png', width = 480, height= 480)
dev.off()