complete <- function(directory, id = 1:332){
  setwd(directory)
  comp <- data.frame()
  for(i in id) {
    if(i<10){
      name <- paste("00", i, ".csv", sep="")
    } else if(i<100){
      name <- paste("0", i, ".csv", sep="")
    } else {
      name <- paste(i, ".csv", sep="")
    }
    data <- read.csv(name)
    c <- sum(complete.cases(data))
    comp <- rbind(comp, c(i, c))
  }
  colnames(comp) <- c("id","nobs")
  comp
}

