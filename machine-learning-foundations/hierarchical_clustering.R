## Task is to find the clusters in given Retail Customer Spends data

## Hierarchical Clustering

## First set the working directory path and import the data

setwd ("C:/Users/soura/OneDrive/Documents/R/machine-learning-foundations")       #set this to the local directory on the computer
getwd()

RCDF <- read.csv("Cust_Spend_Data.csv", header=TRUE)
View(RCDF)

?dist  ## help on distance function
d.euc <- dist(x=RCDF[,3:7], method = "euclidean") 
print(d.euc, digits = 3)

## Use the hclust function to build the cluster
?hclust  ## to get help on hclust function

clus1 <- hclust(d.euc, method = "average")
plot(clus1, labels = as.character(RCDF[,2]))

## scale function standardizes the values
scaled.RCDF <- scale(RCDF[,3:7])
View(scaled.RCDF)
head(scaled.RCDF, 10)

d.euc <- dist(x=scaled.RCDF, method = "euclidean") 
print(d.euc, digits = 3)
clus2 <- hclust(d.euc, method = "average")
plot(clus2, labels = as.character(RCDF[,2]))
rect.hclust(clus2, k=3, border="red")
clus2$height

View(RCDF)
## profiling the clusters
RCDF$Clusters <- cutree(clus2, k=3)
aggr = aggregate(RCDF[,-c(1,2, 8)],list(RCDF$Clusters),mean)
clus.profile <- data.frame( Cluster=aggr[,1],
                            Freq=as.vector(table(RCDF$Clusters)),
                            aggr[,-1])

View(clus.profile)