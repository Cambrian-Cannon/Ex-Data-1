unzip("exdata_data_household_power_consumption.zip")
temp<-read.table("./household_power_consumption.txt",header=TRUE,sep=";")
temp$Date<-as.Date(temp$Date,"%d/%m/%Y")
x<-which(temp$Date=="2007-02-01"|temp$Date=="2007-02-02")
my<-temp[x,]
a<-paste(my$Date,my$Time,sep="-")
my$Time<-strptime(a,"%Y-%m-%d-%H:%M:%S")
write.csv(my,"Required.csv")