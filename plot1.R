Plot1<-function(){
# Read the data
dat1 <- read.csv(file="household_power_consumption.txt", sep=";", colClasses = "character")
# Change Date to date format
dat1 <- dat1 %>% mutate(Date = as.Date(Date,format = "%d/%m/%Y"))
# Filter on dates
dat1 <- dat1 %>% filter(Date >= "2007-02-01", Date <= "2007-02-02")
# Convert to numberic
dat1<-dat1 %>% mutate(Global_active_power = as.numeric(Global_active_power))
# Draw the graph
hist(dat1$Global_active_power,col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
}