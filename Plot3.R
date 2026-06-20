my_Data<-read.csv("Required.csv")
my_Data$Time<-strptime(my_Data$Time,"%Y-%m-%d %H:%M:%S")
png("Plot3.png",480,480,res=100)
plot(my_Data$Time,myData$Sub_metering_1,xlab = "Time",ylab="Energy Sub Metering(Wh)",main="Plot 3",type='l'
     ,col="black")
points(my_Data$Time ,myData$Sub_metering_2 ,col="red",type='l')
points(my_Data$Time ,myData$Sub_metering_3 ,col="blue",type='l')
legend("topright",c("Sub Meter 1","Sub Meter 2","Sub Meter 3"),col=c("black","red","blue"),pch = rep(16,3))
dev.off()