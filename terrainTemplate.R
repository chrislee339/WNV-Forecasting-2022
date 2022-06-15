####MAC###

neuroTemplate <- read.csv(file = '~/Documents/Lab/WNV/NeuroWNV_by_county_2000-2021FULL.csv') 

noyearsData <- c("2000", "2020", "2021")
yearsData <- c("2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010",
           "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022")

yeartest <- c("2001", "2002", "2003")
yeartest2 <-c("tData2001", "tData2002", "tData2003")

noyearsData.list <- list()
test <- pData2000
yearsData.list <- list(pData2000, pData2001, pData2002, pData2003, pData2004, pData2005, pData2006, pData2007, pData2008, pData2009,
                       pData2010, pData2011, pData2012, pData2013, pData2014, pData2015, pData2016, pData2017, pData2018,
                       pData2019, pData2020, pData2021, pData2022)

test <- neuroTemplate[neuroTemplate$year == "2021", ]
testYear <- cbind(test, template)
testYear <- testYear[-c(23, 24)]
write.csv(testYear, 'year2021.csv', row.names = FALSE)


test <- neuroTemplate[neuroTemplate$year == "2002", ]
testYearx <- cbind(test, tData2002)
testYearx<- testYear[-c(23, 24)]
write.csv(testYearx, 'year2002.csv', row.names = FALSE)

#############Loop Years without Data
for(i in 1:length(noyearsData)) {
  
  a <- neuroTemplate[neuroTemplate$year == noyearsData[i], ]
  b <- cbind(a, template)
  b <- b[-c(23, 24)]
  write.csv(b, paste0('year',toString(noyearsData[i]),'.csv'), row.names = FALSE)
  
}

#############Loop Years with Data
for(i in 1:length(yearsData)) {

  a <- neuroTemplate[neuroTemplate$year == yearsData[7], ]
  b <- cbind(a, yearsData.list[7])
  b <- b[-c(23, 24, 25)]
  write.csv(b, paste0('year',toString(yearsData[7]),'.csv'), row.names = FALSE)
  
}


############Add 2022 to All Covariates file, Loop to add Percentage Land Data
a <- covariates[covariates$YEAR == yearsData[1], ]
a[ ,5:28] <- NA
covariatesAll <- rbind(covariates, a)
covariatesAll <- covariatesAll[order(covariatesAll$fips, covariatesAll$YEAR), ]

for(i in 1:length(yearsData)) {
  a <- covariatesAll[covariatesAll$YEAR == yearsData[i], ]
  b <- cbind(a, yearsData.list[i])
  b <- b[-c(45, 46, 47)]
  write.csv(b, paste0('year',toString(yearsData[i]),'.csv'), row.names = FALSE)
  
}

#############Combine all dataframes

allYears <- rbind(year2000, year2001, year2002, year2003, year2004, year2005, year2006, year2007, year2008, year2009,
                  year2010, year2011, year2012, year2013, year2014, year2015, year2016, year2017, year2018, year2019,
                  year2020, year2021, year2022)

allYears <- allYears[order(allYears$fips, allYears$YEAR), ]

write.csv(allYears, "2000_2022_Covariates.csv", row.names=FALSE)
