data("USArrests")
rawdf <- na.omit(USArrests)
head(rawdf)
desc_stats <- data.frame(
  Min = apply(rawdf, 2, min), # minimum
  Med = apply(rawdf, 2, median), # median
  Mean = apply(rawdf, 2, mean), # mean
  SD = apply(rawdf, 2, sd), # Standard deviation
  Max = apply(rawdf, 2, max) # Maximum
)
desc_stats <- round(desc_stats, 1)
head(desc_stats)
df <- scale(USArrests)
head(df)
set.seed(123)
km.res <- kmeans(scale(USArrests), 4, nstart = 25)
km.res
aggregate(USArrests, by=list(cluster=km.res$cluster), mean)
km.res$cluster
head(km.res$cluster,4)
km.res$size
km.res$centers

