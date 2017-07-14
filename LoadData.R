#Read data
Masterdata <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")

#Filter data for the required date range
data <- Masterdata[Masterdata$Date=="1/2/2007" | Masterdata$Date=="2/2/2007",]

#remove master data
rm(Masterdata)

#Convert to date class

#Format date column
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

#Format time column
data$Time <- strptime(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")

#Close connection to the file
closeAllConnections()