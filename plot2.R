Plot2<-function(){
# Read the data
dat1 <- read.csv(file="household_power_consumption.txt", sep=";", colClasses = "character")
# Change Date to date format
dat1 <- dat1 %>% mutate(Date = as.Date(Date,format = "%d/%m/%Y"))
# Filter on dates
dat1 <- dat1 %>% filter(Date >= "2007-02-01", Date <= "2007-02-02")
# Convert to numberic
dat1<-dat1 %>% mutate(Global_active_power = as.numeric(Global_active_power))
# Convert to date 
dat1 <- dat1 %>% mutate(datetime = as.POSIXct(paste(Date,Time), format = "%Y-%m-%d %H:%M:%S"))
# Draw the graph
plot(dat1$datetime,dat1$Global_active_power, type = "l", ylab = "Global active Power", xlab = "")
}