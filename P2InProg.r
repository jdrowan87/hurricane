hurdat <- read.csv("https://www.nhc.noaa.gov/data/hurdat/hurdat2-1851-2018-120319.txt",sep = ",", header = FALSE)
library(shiny)
library(shinydashboard)
library(ggplot2)
library(lubridate)
library(DT)
library(jpeg)
library(grid)
library(leaflet)
library(scales)

hurdat <- hurdat[1:20] #has 21 columns for some reason, should be 20.

names(hurdat) <- c("YMD","HMS","L","State","lat","lon","sustained","pressure","34NE","34SE","34SW","34NW","50NE","50SE",
                   "50SW","50NW","64NE","64SE","64SW","64NW")

headerLines <- grep("[[:alpha:]]",hurdat[,2]) #searches the name category for letters and returns indexes
hurrinfo <- hurdat[headerLines,1] #ALXXYYYY
hurrnames <- hurdat[headerLines,2] #name of each hurricane

hurrlinesAfter <- hurdat[headerLines,3] #amount of data lines following the header
hurrlinesAfter <- as.character(hurrlinesAfter)
hurrlinesAfter <- as.numeric(hurrlinesAfter)

hurryear <- as.integer(substr(hurrinfo,5,8))
after2005 <- headerLines[hurryear >= 2005] #C range only does hurricanes after 2005
byYear <- table(hurryear[hurryear >= 2005])
plot(byYear)

hurricane <- function(a) { #returns the data for hurricane number a.
  x <- headerLines[a] + 1
  y <- hurrlinesAfter[a] + headerLines[a]
  return(hurdat[x:y,])
}
getMaxSpeed <- function(a) {
  x <- max(hurricane(a)$sustained)
  return(x)
}

category <- lapply(seq(from = 1, to = length(headerLines), by = 1), getMaxSpeed)
category[category <= 73 ] <- 0
category[category >= 74 & category <= 95 ] <- 1
category[category >= 96 & category <= 110 ] <- 2
category[category >= 111 & category <= 129 ] <- 3
category[category >= 130 & category <= 156 ] <- 4
category[category >= 157] <- 5 #hurricane number and which category its in

first <- length(hurryear) - length(hurryear[hurryear >= 2005]) + 1 #the first hurricane to plot
plot(hurryear,category)

d<-as.data.frame(hurdat)

for (i in 1:nrow(d)){
    
    z<-substr((d[i,"YMD"]),1,1)
    if (z=='A'){
        x<- d[i,1]
        y<- d[i,2]
        d[i,21]<- x
        d[i,22]<- y
    }else{
        d[i,21] <-x
        d[i,22] <-y
    }
}
colnames(d)[22]<-"Hname"
colnames(d)[21]<-"ID"
hurDataDF<-d

hurDataDF
