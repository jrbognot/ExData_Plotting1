#Reading, and subsetting power consumption data
readFile <- "C:/Users/Jezekiel Bognot/Desktop/Data Scientist Track/Assignments/Exploratory Data Analysis/Week 1/household_power_consumption.txt"
power <- read.table(readFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetPower <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

#Transform date/time variables into object of POSIXlt
datetime <- strptime(paste(subSetPower$Date, subSetPower$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#creating numeric variables
globalActivePower <- as.numeric(subSetPower$Global_active_power)
subMetering1 <- as.numeric(subSetPower$Sub_metering_1)
subMetering2 <- as.numeric(subSetPower$Sub_metering_2)
subMetering3 <- as.numeric(subSetPower$Sub_metering_3)

#plot3
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)