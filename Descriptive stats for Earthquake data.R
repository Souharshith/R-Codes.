earthquakes<- datasets::quakes

head(earthquakes,10)
tail(earthquakes,10)

earthquakes[,c(1,2)]
df<-earthquakes[,-4]

summary(earthquakes)
summary(earthquakes$depth)
summary(earthquakes[,3])

plot(earthquakes$depth)
plot(earthquakes$depth, type = 'l')
plot(earthquakes$long, earthquakes$depth, type = 'p')
plot(earthquakes)
plot(earthquakes$stations, main= 'stations', xlab = 'given values', ylab = 'values', type = 'l', col='red')

barplot(earthquakes$stations, main = 'stations', xlab= 'given values', ylab = 'values', col = 'blue')

hist(earthquakes$depth)
hist(earthquakes$depth, main= 'depth', xlab = 'given values',ylab = 'values', col = 'blue')

boxplot(earthquakes$depth, main= 'depth')
boxplot(earthquakes$depth,earthquakes$long)
boxplot(earthquakes[,1:4])

par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty='o')
plot(earthquakes$depth)
plot(earthquakes$depth, type = 'l')
plot(earthquakes$long, earthquakes$depth, type = 'p')
barplot(earthquakes$stations, main = 'stations', xlab= 'given values', ylab = 'values', col = 'blue')
plot(earthquakes$stations, main= 'stations', xlab = 'given values', ylab = 'values', type = 'l', col='red')
hist(earthquakes$depth)
hist(earthquakes$depth, main= 'depth', xlab = 'given values',ylab = 'values', col = 'blue')
boxplot(earthquakes$depth, main= 'depth', col='red')
boxplot(earthquakes[,1:4], col='yellow')
