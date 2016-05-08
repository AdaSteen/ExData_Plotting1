Plot3<-function(){
# Read the data
dat1 <- read.csv(file="household_power_consumption.txt", sep=";", colClasses = "character")
# Change Date to date format
dat1 <- dat1 %>% mutate(Date = as.Date(Date,format = "%d/%m/%Y"))
# Filter on dates
dat1 <- dat1 %>% filter(Date >= "2007-02-01", Date <= "2007-02-02")
# Merge Date and Time
dat1 <- dat1 %>% mutate(datetime = as.POSIXct(paste(Date,Time), format = "%Y-%m-%d %H:%M:%S"))
# Plot graph
plot(dat1$datetime,dat1$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(dat1$datetime,dat1$Sub_metering_3, type = "l", col = "blue")
lines(dat1$datetime,dat1$Sub_metering_2, type = "l", col = "red")
legend('topright',c("Sub_metering1","Sub_metering2","Sub_metering3"),lty=c(1,1),col=c('black','red','blue'))
}