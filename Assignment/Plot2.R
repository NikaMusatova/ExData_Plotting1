household<-read.table('household_power_consumption.txt', stringsAsFactors = F, sep=';', header=T)
householdwork<-household[,c(which(household$Date=='1/2/2007'),which(household$Date=='2/2/2007'))]
png(file="Plot2.png", bg="white", height=480, width=480)
householdwork$datefull<-as.POSIXct(paste(as.Date(householdwork$Date, format = '%d/%m/%Y'), householdwork$Time))
plot(householdwork$Global_active_power~householdwork$datefull, type='l', ylab='Global Active Power (kilowatts)', xlab='')
dev.off()

