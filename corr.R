corr <- function(directory, threshhold = 0){
  setwd(directory)
  data <- read.csv("001.csv")
  correlations <- numeric()
  for(i in 1:332) {
    if(i<10){
      name <- paste("00", i, ".csv", sep="")
    } else if(i<100){
      name <- paste("0", i, ".csv", sep="")
    } else {
      name <- paste(i, ".csv", sep="")
    }
    data <- read.csv(name)
    if (sum(complete.cases(data)) >= threshhold){
    c <- cor(data["sulfate"][complete.cases(data),],data["nitrate"][complete.cases(data),])
    correlations <- c(correlations, c)
    } 
  }
  correlations
}
