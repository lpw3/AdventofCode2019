###########################
# Advent of Code Day 1
# Author: Lauren Woyczynski 
###########################


## Day 1
#Part 1
input <- read.csv('/home/j/temp/lpw3/advent_day1.csv', header = F)
input <- input$V1 
ans <- sum(unlist(lapply(input, function(m) return(floor(m/3) - 2))))

#Part 2
fr <- function(m) return(floor(m/3) - 2)
fuelreq <- function(m){
  fuel <- c()
  while(m >= 0){
    m <- fr(m)
    fuel <- c(fuel, m)
  }
  return(sum(fuel[1:length(fuel) - 1]))
}

ans <- sum(unlist(lapply(input, fuelreq)))

