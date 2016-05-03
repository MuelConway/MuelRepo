pollutantmean <- function(directory, pollutant, id = 1:332){
    setwd(directory)
    s <- 0
    c <- 0
    for(i in id) {
    if(i<10){
        name <- paste("00", i, ".csv", sep="")
    } else if(i<100){
        name <- paste("0", i, ".csv", sep="")
    } else {
        name <- paste(i, ".csv", sep="")
    }
    data <- read.csv(name)
    s <- s + sum(data[pollutant][complete.cases(data[pollutant]),])
    c <- c + sum(complete.cases(data[pollutant]))
    }
      s/c
}


