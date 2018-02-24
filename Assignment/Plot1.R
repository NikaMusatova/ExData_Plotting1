household<-read.table('household_power_consumption.txt', stringsAsFactors = F, sep=';', header=T)
householdwork<-household[,c(which(household$Date=='1/2/2007'),which(household$Date=='2/2/2007'))]
png(file="Plot1.png", bg="white", height=480, width=480)
hist(as.numeric(householdwork$Global_active_power), col='red', main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
