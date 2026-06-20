myData<-read.csv("Required.csv")
myData$Time<-strptime(myData$Time,"%Y-%m-%d %H:%M:%S")
png("Plot2.png",480,480,res=100)
plot((myData$Time),myData$Global_active_power,type="l",xlab = "Time",ylab = "Global Active Power(kW)",
     main="Plot 2")
dev.off()