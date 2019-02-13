# Reading, and subsetting power consumption data
readFile <- ".../household_power_consumption.txt"
power <- read.table(readFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetPower <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

#creating numeric variable 
globalActivePower <- as.numeric(subSetPower$Global_active_power)

#plot1
hist(globalActivePower, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
