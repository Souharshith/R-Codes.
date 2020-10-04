airquality<-datasets :: airquality

head(airquality,10)
tail(airquality,10)

airquality[,c(1,2)]
df<-airquality[,-6]

summary(airquality[,1])
summary(airquality[,5])
summary(airquality$Ozone)
summary(airquality$Wind)
summary(airquality)

plot(airquality$Wind)
plot(airquality$Temp, airquality$Wind, type="p")
plot(airquality$Temp, airquality$Wind, type="l")
plot(airquality)
plot(airquality$Wind, type='l')
plot(airquality$Wind, type='l', xlab = 'Ozone Concentration in air', ylab = 'no of instances', main = 'Ozone levels in the city', col= 'red')

barplot(airquality$Wind, main = 'Ozone concentration in air', ylab = 'levels', col = 'red', horiz = F, axes = T)

hist(airquality$Wind)
hist(airquality$Temp)
hist(airquality$Temp, main = 'Solar radiations values in air', xlab = 'Solar Radiations', col = 'red')

boxplot(airquality$Wind, main='Boxplot')
boxplot(airquality$Temp, main='Boxplot')
boxplot(airquality[,1:4], main='Multiple Boxplot')

sd(airquality$Ozone,na.rm=T)

par(mfrow=c(3,3), mar=c(2,5,2,1), las=0, bty='o')
plot(airquality$Temp, airquality$Wind, type="p")
plot(airquality$Temp, airquality$Wind, type="l")
plot(airquality$Wind, type='l', xlab = 'Ozone Concentration in air', ylab = 'no of instances', main = 'Ozone levels in the city', col= 'red')
barplot(airquality$Wind, main = 'Ozone concentration in air', ylab = 'levels', col = 'red', horiz = F, axes = T)
hist(airquality$Wind)
hist(airquality$Temp)
hist(airquality$Temp, main = 'Solar radiations values in air', xlab = 'Solar Radiations', col = 'red')
boxplot(airquality$Temp, main='Boxplot')
boxplot(airquality[,1:4], main='Multiple Boxplot')

