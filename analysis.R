setwd("~/Documents/GitHub/nba-draft-analysis")
temp <- list.files("Data", full.names = TRUE)
dB <- do.call(rbind, lapply(temp, function(x) read.csv(x , header = TRUE, skip = 2, stringsAsFactors=FALSE)))

dB$Rk <- as.numeric (dB$Rk)

tail(dB)
temp
unique(dB$Rk)
str(dB)

colCl <- c("numeric", "numeric", "character", "numeric", "numeric", "character", "character", "numeric", "character", "character",  "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")