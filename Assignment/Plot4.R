household<-read.table('household_power_consumption.txt', stringsAsFactors = F, sep=';', header=T)
householdwork<-household[,c(which(household$Date=='1/2/2007'),which(household$Date=='2/2/2007'))]
householdwork$datefull<-as.POSIXct(paste(as.Date(householdwork$Date, format = '%d/%m/%Y'), householdwork$Time))
png(file="Plot4.png", bg="white", height=480, width=480)
par(mfrow=c(2,2), oma=c(0,0,2,0))
plot(householdwork$Global_active_power~householdwork$datefull, type="l", ylab="Global Active Power (kilowatts)", xlab="")
plot(householdwork$Voltage~householdwork$datefull, type="l", ylab="Voltage (volt)", xlab="")
plot(householdwork$Sub_metering_1~householdwork$datefull, type="l", ylab="Global Active Power (kilowatts)", xlab="")
lines(householdwork$Sub_metering_2~householdwork$datefull,col='Red')
lines(householdwork$Sub_metering_3~householdwork$datefull,col='Blue')
legend("topright", col=c("black", "red", "blue"), lty=1,legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(householdwork$Global_reactive_power~householdwork$datefull, type="l", ylab="Global Rective Power (kilowatts)",xlab="")
dev.off()

