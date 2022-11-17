e_quakes<-datasets::quakes

####Top 10 rows and last 10 rows
head(quakes,10)
tail(quakes,10)

######Columns
quakes[,c(1,2)]

df=quakes[,-6]

summary(quakes[,1])

quakes$long

summary(quakes$long)
###########Summary of the data#########

summary(quakes)
summary(quakes$depth) 

#####################
plot(quakes$long)
plot(quakes$long,quakes$depth,type="p")
plot(quakes)

# points and lines 
plot(quakes$long, type= "l") # p: points, l: lines,b: both
plot(quakes$long, xlab = 'Earth quakes', 
     ylab = 'No of Instances', main = 'Earth quakes in the city',
     col = 'red')

# Horizontal bar plot
barplot(quakes$mag, main = '',
        ylab = 'Earth quakes', col= 'red',horiz =F,axes=T)

#Histogram
hist(quakes$mag)
hist(quakes$mag, 
     main = 'Shock form quakes',
     xlab = 'quakes shock.', col='green')

#Density plot
density(quakes$long)
hist(quakes$long, 
     main = 'Denstiy of the mag',
     xlab = 'Denstiy plot.', col='brown')

#Single box plot
boxplot(quakes$mag,main="Boxplot")

# Multiple box plots
boxplot(quakes[,2:4],main='Multiple')

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(quakes$lat)
plot(quakes$lat, quakes$depth)
plot(quakes$lat, type= "l")
plot(quakes$lat, type= "l")
plot(quakes$lat, type= "l")
barplot(quakes$lat, main = 'Quakes lat',
        xlab = 'Quakes lat', col='pink',horiz = TRUE)
hist(quakes$lat)
boxplot(quakes$lat)
boxplot(quakes[,0:4], main='Multiple Box plots')

sd(quakes$depth)
var(quakes$lat)
skewness(quakes$long)
kurtosis(quakes$depth)

