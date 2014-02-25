#Reading, naming and subsetting power consumption data

HPC <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
HPC_1 <- subset(HPC, Date %in% c("1/2/2007","2/2/2007"))
HPC_1$Date <- as.Date(HPC_1$Date, format="%d/%m/%Y")

# Plot 1
hist(HPC_1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")




