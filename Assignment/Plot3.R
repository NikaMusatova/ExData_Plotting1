household<-read.table('household_power_consumption.txt', stringsAsFactors = F, sep=';', header=T)
householdwork<-household[,c(which(household$Date=='1/2/2007'),which(household$Date=='2/2/2007'))]
householdwork$datefull<-as.POSIXct(paste(as.Date(householdwork$Date, format = '%d/%m/%Y'), householdwork$Time))
png(file="Plot3.png", bg="white", height=480, width=480)
plot(householdwork$Sub_metering_1~householdwork$datefull, type='l', xlab='', ylab='Global Active Power (kilowatts)')
  lines(householdwork$Sub_metering_2~householdwork$datefull, col='red')
  lines(householdwork$Sub_metering_3~householdwork$datefull, col='blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
