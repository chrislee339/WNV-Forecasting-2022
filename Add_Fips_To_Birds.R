#Load in file to dataframe
df <- read.delim(file.choose(), header=T)

#Duplicate county codes to new fips column
df <- cbind(df, fips = df$COUNTY.CODE)

#Reorder so easier to read
df <- df[,c(1:21,51,22:50)]

#See what we're working with
unique(df[c("fips")])

#Replace characters 'US-**-' to respective fips state code
df$fips <-  gsub('US-AL-', '1',  df$fips) #Alabama
df$fips <-  gsub('US-AK-', '2',  df$fips) #Alaska
df$fips <-  gsub('US-AZ-', '4',  df$fips) #Arizona
df$fips <-  gsub('US-AR-', '5',  df$fips) #Arkansas
df$fips <-  gsub('US-CA-', '6',  df$fips) #California
df$fips <-  gsub('US-CO-', '8',  df$fips) #Colorado
df$fips <-  gsub('US-CT-', '9',  df$fips) #Connecticut
df$fips <-  gsub('US-DE-', '10', df$fips) #Delaware
df$fips <-  gsub('US-DC-', '11', df$fips) #DC
df$fips <-  gsub('US-FL-', '12', df$fips) #Florida
df$fips <-  gsub('US-GA-', '13', df$fips) #Georgia
df$fips <-  gsub('US-HI-', '15', df$fips) #Hawaii
df$fips <-  gsub('US-ID-', '16', df$fips) #Idaho
df$fips <-  gsub('US-IL-', '17', df$fips) #Illinois
df$fips <-  gsub('US-IN-', '18', df$fips) #Indiana
df$fips <-  gsub('US-IA-', '19', df$fips) #Iowa
df$fips <-  gsub('US-KS-', '20', df$fips) #Kansas
df$fips <-  gsub('US-KY-', '21', df$fips) #Kentucky
df$fips <-  gsub('US-LA-', '22', df$fips) #Louisiana
df$fips <-  gsub('US-ME-', '23', df$fips) #Main
df$fips <-  gsub('US-MD-', '24', df$fips) #Maryland
df$fips <-  gsub('US-MA-', '25', df$fips) #Massachusetts
df$fips <-  gsub('US-MI-', '26', df$fips) #Michigan
df$fips <-  gsub('US-MN-', '27', df$fips) #Minisota
df$fips <-  gsub('US-MS-', '28', df$fips) #Mississippi
df$fips <-  gsub('US-MO-', '29', df$fips) #Missouri
df$fips <-  gsub('US-MT-', '30', df$fips) #Montana
df$fips <-  gsub('US-NE-', '31', df$fips) #Nebraska
df$fips <-  gsub('US-NV-', '32', df$fips) #Nevada
df$fips <-  gsub('US-NH-', '33', df$fips) #New Hampshire
df$fips <-  gsub('US-NJ-', '34', df$fips) #New Jersey
df$fips <-  gsub('US-NM-', '35', df$fips) #New Mexico
df$fips <-  gsub('US-NY-', '36', df$fips) #New York
df$fips <-  gsub('US-NC-', '37', df$fips) #North Carolina
df$fips <-  gsub('US-ND-', '38', df$fips) #North Dakota
df$fips <-  gsub('US-OH-', '39', df$fips) #Ohio
df$fips <-  gsub('US-OK-', '40', df$fips) #Oklahoma 
df$fips <-  gsub('US-OR-', '41', df$fips) #Oregon
df$fips <-  gsub('US-PA-', '42', df$fips) #Pennsylvania
df$fips <-  gsub('US-PR-', '72', df$fips) #Puerto Rico
df$fips <-  gsub('US-RI-', '44', df$fips) #Rhode Island
df$fips <-  gsub('US-SC-', '45', df$fips) #South Carolina
df$fips <-  gsub('US-SD-', '46', df$fips) #South Dakota
df$fips <-  gsub('US-TN-', '47', df$fips) #Tennessee
df$fips <-  gsub('US-TX-', '48', df$fips) #Texas
df$fips <-  gsub('US-UT-', '49', df$fips) #Utah
df$fips <-  gsub('US-VT-', '50', df$fips) #Vermont
df$fips <-  gsub('US-VA-', '51', df$fips) #Virginia
df$fips <-  gsub('US-VI-', '78', df$fips) #Virgin Islands
df$fips <-  gsub('US-WA-', '53', df$fips) #Washington
df$fips <-  gsub('US-WV-', '54', df$fips) #West Virginia
df$fips <-  gsub('US-WI-', '55', df$fips) #Wisconsin
df$fips <-  gsub('US-WY-', '56', df$fips) #Wyoming

#Check for non-numbers in fips column
nonNumber <- which(!grepl('^[0-9]', df$fips))

#Check for blanks in fipscolumn
blanks <- which(df$fips=="")

#Check for values that are neither numbers nor blank
setdiff(nonNumber, blanks)

#*If Necessary*  Examine those elements -- df[[column]][[row]]
df[["fips"]][[4225996]] 
df[["fips"]][[5825683]]

#*If Necessary*  Delete Row -- df[-c(x,y,z), ] 
df <- df[-c(4225996, 5825683), ]

#Write to .txt file
write.table(df, file = "housesparrow.txt", sep = "\t", row.names = FALSE)
