#MAC
firstSet <- c("a1", "a2", "a3", "a4", "a5",
              "a6", "a7", "a8", "a9", "a10",
              "a11", "a12", "a13", "a14", "a15",
              "a16", "a17", "a18")

secondSet <- c("b1", "b2", "b3", "b4", "b5",
              "b6", "b7", "b8", "b9", "b10",
              "b11", "b12", "b13", "b14", "b15",
              "b16", "b17", "b18")

thirdSet <- c("c1", "c2", "c3", "c4", "c5",
              "c6", "c7", "c8", "c9", "c10",
              "c11", "c12", "c13", "c14", "c15",
              "c16", "c17", "c18")

fourthSet <- c("d1", "d2", "d3", "d4", "d5",
              "d6", "d7", "d8", "d9", "d10",
              "d11", "d12", "d13", "d14", "d15",
              "d16", "d17", "d18")

classifications <- c("Unclassified",
                     "Open Water",
                     "Developed, Open Space",
                     "Developed, Low Intensity",
                     "Developed, Medium Intensity",
                     "Developed, High Intensity",
                     "Barren Land",
                     "Deciduous Forest",
                     "Evergreen Forest",
                     "Mixed Forest",
                     "Shrub/Scrub",
                     "Herbaceous",
                     "Hay/Pasture",
                     "Cultivated Crops",
                     "Woody Wetlands",
                     "Emergent Herbaceous Wetlands",
                     "fips",
                     "state")

colnms <- c("Unclassified",
            "Open Water",
            "Developed, Open Space",
            "Developed, Low Intensity",
            "Developed, Medium Intensity",
            "Developed, High Intensity",
            "Barren Land",
            "Deciduous Forest",
            "Evergreen Forest",
            "Mixed Forest",
            "Shrub/Scrub",
            "Herbaceous",
            "Hay/Pasture",
            "Cultivated Crops",
            "Woody Wetlands",
            "Emergent Herbaceous Wetlands")

allData <- c("tData2001", "tData2002", "tData2003", "tData2004", "tData2005", "tData2006",
             "tData2007", "tData2008", "tData2009", "tData2010", "tData2011", "tData2012",
             "tData2013", "tData2014", "tData2015", "tData2016", "tData2017", "tData2018",
             "tData2019")

yearsData.list <- list(test, tData2000, tData2001, tData2002, tData2003, tData2004, tData2005, tData2006, tData2007, tData2008, tData2009,
                       tData2010, tData2011, tData2012, tData2013, tData2014, tData2015, tData2016, tData2017, tData2018,
                       tData2019, tData2020, tData2021, tData2022)

count <- c(1:18)

template <- data.frame(matrix(ncol = 18, nrow = 3108))
colnames(template) <- classifications
template4 <- template

#Rename headers
colnames(tData2016) <- firstSet
colnames(tData2019) <- secondSet
colnames(template) <- thirdSet
colnames(template4) <- fourthSet

total <- cbind(tData2016, tData2019, template, template4)


#Linear Interpolate =(A1+((2002-2001)*(B1-A1)/(2004-2001)))
#3 Year Difference - First Missing
total$c1 <- round(total$a1 + ((6)*(total$b1 - total$a1)/(3)), 1)
total$c2 <- round(total$a2 + ((6)*(total$b2 - total$a2)/(3)), 1)
total$c3 <- round(total$a3 + ((6)*(total$b3 - total$a3)/(3)), 1)
total$c4 <- round(total$a4 + ((6)*(total$b4 - total$a4)/(3)), 1)
total$c5 <- round(total$a5 + ((6)*(total$b5 - total$a5)/(3)), 1)
total$c6 <- round(total$a6 + ((6)*(total$b6 - total$a6)/(3)), 1)
total$c7 <- round(total$a7 + ((6)*(total$b7 - total$a7)/(3)), 1)
total$c8 <- round(total$a8 + ((6)*(total$b8 - total$a8)/(3)), 1)
total$c9 <- round(total$a9 + ((6)*(total$b9 - total$a9)/(3)), 1)
total$c10 <- round(total$a10 + ((6)*(total$b10 - total$a10)/(3)), 1)
total$c11 <- round(total$a11 + ((6)*(total$b11 - total$a11)/(3)), 1)
total$c12 <- round(total$a12 + ((6)*(total$b12 - total$a12)/(3)), 1)
total$c13 <- round(total$a13 + ((6)*(total$b13 - total$a13)/(3)), 1)
total$c14 <- round(total$a14 + ((6)*(total$b14 - total$a14)/(3)), 1)
total$c15 <- round(total$a15 + ((6)*(total$b15 - total$a15)/(3)), 1)
total$c16 <- round(total$a16 + ((6)*(total$b16 - total$a16)/(3)), 1)

#3 Year Difference - Second Missing
total$d1 <- round(total$a1 + ((5)*(total$b1 - total$a1)/(3)), 1)
total$d2 <- round(total$a2 + ((5)*(total$b2 - total$a2)/(3)), 1)
total$d3 <- round(total$a3 + ((5)*(total$b3 - total$a3)/(3)), 1)
total$d4 <- round(total$a4 + ((5)*(total$b4 - total$a4)/(3)), 1)
total$d5 <- round(total$a5 + ((5)*(total$b5 - total$a5)/(3)), 1)
total$d6 <- round(total$a6 + ((5)*(total$b6 - total$a6)/(3)), 1)
total$d7 <- round(total$a7 + ((5)*(total$b7 - total$a7)/(3)), 1)
total$d8 <- round(total$a8 + ((5)*(total$b8 - total$a8)/(3)), 1)
total$d9 <- round(total$a9 + ((5)*(total$b9 - total$a9)/(3)), 1)
total$d10 <- round(total$a10 + ((5)*(total$b10 - total$a10)/(3)), 1)
total$d11 <- round(total$a11 + ((5)*(total$b11 - total$a11)/(3)), 1)
total$d12 <- round(total$a12 + ((5)*(total$b12 - total$a12)/(3)), 1)
total$d13 <- round(total$a13 + ((5)*(total$b13 - total$a13)/(3)), 1)
total$d14 <- round(total$a14 + ((5)*(total$b14 - total$a14)/(3)), 1)
total$d15 <- round(total$a15 + ((5)*(total$b15 - total$a15)/(3)), 1)
total$d16 <- round(total$a16 + ((5)*(total$b16 - total$a16)/(3)), 1)

#2 Year Difference
total$c1 <- round(total$a1 + ((1)*(total$b1 - total$a1)/(2)), 1)
total$c2 <- round(total$a2 + ((1)*(total$b2 - total$a2)/(2)), 1)
total$c3 <- round(total$a3 + ((1)*(total$b3 - total$a3)/(2)), 1)
total$c4 <- round(total$a4 + ((1)*(total$b4 - total$a4)/(2)), 1)
total$c5 <- round(total$a5 + ((1)*(total$b5 - total$a5)/(2)), 1)
total$c6 <- round(total$a6 + ((1)*(total$b6 - total$a6)/(2)), 1)
total$c7 <- round(total$a7 + ((1)*(total$b7 - total$a7)/(2)), 1)
total$c8 <- round(total$a8 + ((1)*(total$b8 - total$a8)/(2)), 1)
total$c9 <- round(total$a9 + ((1)*(total$b9 - total$a9)/(2)), 1)
total$c10 <- round(total$a10 + ((1)*(total$b10 - total$a10)/(2)), 1)
total$c11 <- round(total$a11 + ((1)*(total$b11 - total$a11)/(2)), 1)
total$c12 <- round(total$a12 + ((1)*(total$b12 - total$a12)/(2)), 1)
total$c13 <- round(total$a13 + ((1)*(total$b13 - total$a13)/(2)), 1)
total$c14 <- round(total$a14 + ((1)*(total$b14 - total$a14)/(2)), 1)
total$c15 <- round(total$a15 + ((1)*(total$b15 - total$a15)/(2)), 1)
total$c16 <- round(total$a16 + ((1)*(total$b16 - total$a16)/(2)), 1)


############
tData2022 <- total[ , c(37:54)]
tData2021 <- total[ , c(55:72)]

colnames(tData2016) <- classifications

write.csv(tData2022, "tData2022.csv", row.names = FALSE)

#############

for(i in 1:length(yearsData.list)){
  yearsData.list[1]
  yearsData.list[1][ , 'sum'] <- NA
  yearsData.list[1]$sum <- rowSums(yearsData.list[1])
}

tData2006[ , 'sum'] <- NA
tData2006$sum <- rowSums(tData2006[,colnms])

percentage <- tData2006

percentage$Unclassified <- (percentage$Unclassified/percentage$sum)*100
percentage$`Open Water` <- (percentage$`Open Water`/percentage$`sum`)*100
percentage$`Developed, Open Space` <- (percentage$`Developed, Open Space`/percentage$sum)*100
percentage$`Developed, Low Intensity` <- (percentage$`Developed, Low Intensity`/percentage$sum)*100
percentage$`Developed, Medium Intensity` <- (percentage$`Developed, Medium Intensity`/percentage$sum)*100
percentage$`Developed, High Intensity` <- (percentage$`Developed, High Intensity`/percentage$sum)*100
percentage$`Barren Land` <- (percentage$`Barren Land`/percentage$sum)*100
percentage$`Deciduous Forest` <- (percentage$`Deciduous Forest`/percentage$sum)*100
percentage$`Evergreen Forest` <- (percentage$`Evergreen Forest`/percentage$sum)*100
percentage$`Mixed Forest` <- (percentage$`Mixed Forest`/percentage$sum)*100
percentage$`Shrub/Scrub` <- (percentage$`Shrub/Scrub`/percentage$sum)*100
percentage$Herbaceous <- (percentage$Herbaceous/percentage$sum)*100
percentage$`Hay/Pasture` <- (percentage$`Hay/Pasture`/percentage$sum)*100
percentage$`Cultivated Crops` <- (percentage$`Cultivated Crops`/percentage$sum)*100
percentage$`Woody Wetlands` <- (percentage$`Woody Wetlands`/percentage$sum)*100
percentage$`Emergent Herbaceous Wetlands` <- (percentage$`Emergent Herbaceous Wetlands`/percentage$sum)*100

pData2006 <- percentage

write.csv(percentage, "pData2006.csv", row.names = FALSE)


percentage[ , 'sum'] <- NA
percentage$sum <- rowSums(percentage[,colnms])

######Junk
