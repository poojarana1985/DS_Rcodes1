e_quakes<-datasets::quakes
# finding standard deviation
sd(e_quakes$mag,na.rm = T)
# top and bottom rows
head(e_quakes,15)
tail(e_quakes,15)

#summary of data
summary(e_quakes)
summary(e_quakes$depth)
summary(e_quakes$mag)

#col data
e_quakes[,c(3,4)]
summary(e_quakes[,3])
summary(e_quakes[,4])

#plots
plot(e_quakes)
plot(e_quakes$depth)
plot(e_quakes$mag)


#Horizontal Bar plot
barplot(e_quakes$depth, main = 'depth of earth quakes',
        ylab = 'Depth levels', col= 'blue',horiz = F,axes=T)
barplot(e_quakes$mag, main = 'magnitude of earth quakes',
        ylab = 'magnitude levels', col= 'blue',horiz = F,axes=T)

#Histogram
hist(e_quakes$depth) 
hist(e_quakes$mag)     

#Single box plot
boxplot(e_quakes$depth,main="Boxplot")
boxplot(e_quakes$mag,main="Boxplot")

# Multiple box plots
boxplot(e_quakes[,3:4],main='Multiple')


#Variance
var(e_quakes$depth)
var(e_quakes$mag)

#skewness
skewness(e_quakes$depth)
skewness(e_quakes$mag)
skew
#kurtosis
kurtosis(e_quakes$depth)
kurtosis(e_quakes$mag)

