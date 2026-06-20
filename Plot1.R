myData<-read.csv("Required.csv")
png("Plot1.png",480,480,res=100)
hist(myData$Global_active_power,xlab = "Global Active Power(kW)",main="Plot 1")
dev.off()