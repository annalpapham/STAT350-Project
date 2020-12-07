data_files <- list.files("/Users/PhuongAnh/Downloads/uscensusbureau-acs-2015-5-e-agesex")
data_files 

for(i in 1:length(data_files)) {                              # Head of for-loop
  assign(paste0("data", i),                                   # Read and store data frames
         read.csv(paste0("/Users/PhuongAnh/Downloads/uscensusbureau-acs-2015-5-e-agesex/",
                         data_files[i])))
}

all = rbind(data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20,data21,data22,data23,data24,data25,data26,data27,data28,data29,data30,data31,data32,data33,data34,data35,data36,data37,data38,data39,data40,data41,data42,data43,data44,data45,data46,data47,data48,data49,data50,data51,data52)

all = all[-which(is.na(all$CountyFIPS)),]

keeps = c("State","StateFIPS","CountyFIPS", "AreaName", "B01001_001", "B01001_002","B01001_026", "B01002_001", "B01002_002","B01002_003")
AgeSex = all[keeps]
colnames(AgeSex)[5] <- "Total Population"
colnames(AgeSex)[6] <- "Total Male"
colnames(AgeSex)[7] <- "Total Female"
colnames(AgeSex)[8] <- "Median Age"
colnames(AgeSex)[9] <- "Median Age_Male"
colnames(AgeSex)[10] <- "Median Age_Female"
write.csv(AgeSex, "/Users/PhuongAnh/STAT350-Project/agesex.csv")