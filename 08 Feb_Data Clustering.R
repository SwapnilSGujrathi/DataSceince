#data Load
mydata1 <- Universities

######################
mydata <- scale(mydata1[,2:7])

######Computing the distance matrix
d <- dist(mydata, method = "euclidean") 
d

##Building the algorithm # try with 'centroid'
fit <- hclust(d, method = "average")

##display dendogram
plot(fit)

##cut tree into 4 clusters
groups <- cutree(fit, k=4)

###draw dendogram with red border around the 4 clusters
rect.hclust(fit, k=4, border = "red")

##Attached the cluster numbers to Uni
clusters=data.frame('Uni' =mydata1[,1], 'cluster'=groups)
