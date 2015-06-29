setwd("~/Documents/GitHub/nba-draft-analysis")
temp <- list.files("Data", full.names = TRUE)
dB <- do.call(rbind, lapply(temp, function(x) read.csv(x , header = TRUE, skip = 2)))
tail(dB)
temp
unique(dB$Rk)
str(dB)
