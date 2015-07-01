setwd("~/Documents/GitHub/nba-draft-analysis")
temp <- list.files("Data", full.names = TRUE)
dB <- do.call(rbind, lapply(temp, function(x) read.csv(x , header = TRUE, skip = 2, stringsAsFactors = FALSE)))

names(dB)[names(dB) == "FG."] <- "FG"
names(dB)[names(dB) == "X2P."] <- "X2P"
names(dB)[names(dB) == "X3P."] <- "X3P"
names(dB)[names(dB) == "FT."] <- "FT"

dB$Rk <- as.numeric(dB$Rk)
dB$Year <- as.numeric(dB$Year)
dB$Rd <- as.numeric(dB$Rd)
dB$Pk <- as.numeric(dB$Pk)
dB$Age <- as.numeric(dB$Age)
dB$From <- as.numeric(dB$From)
dB$To <- as.numeric(dB$To)
dB$G <- as.numeric(dB$G)
dB$PTS <- as.numeric(dB$PTS)
dB$TRB <- as.numeric(dB$TRB)
dB$AST <- as.numeric(dB$AST)
dB$STL <- as.numeric(dB$STL)
dB$BLK <- as.numeric(dB$BLK)
dB$FG <- as.numeric(dB$FG)
dB$X2P <- as.numeric(dB$X2P)
dB$X3P <- as.numeric(dB$X3P)
dB$FT <- as.numeric(dB$FT)
dB$WS <- as.numeric(dB$WS)
dB$WS.48 <- as.numeric(dB$WS.48)

