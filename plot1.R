####plot 1
EPC <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", 
                  dec=".", na.strings = "?", colClasses=c("character", "character",
                                                          rep("numeric", 7)))
EPC2 <- subset(EPC, Date == "1/2/2007" | Date == "2/2/2007")

png("plot1.png", width=480, height=480)
hist(EPC2$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()