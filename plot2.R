# Reading, and subsetting power consumption data
readFile <- "C:/Users/Jezekiel Bognot/Desktop/Data Scientist Track/Assignments/Exploratory Data Analysis/Week 1/household_power_consumption.txt"
power <- read.table(readFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetPower <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

#transform date/time variables into object of POSIXlt
datetime <- strptime(paste(subSetPower$Date, subSetPower$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#creating numeric variable 
globalActivePower <- as.numeric(subSetPower$Global_active_power)

#plot2
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
