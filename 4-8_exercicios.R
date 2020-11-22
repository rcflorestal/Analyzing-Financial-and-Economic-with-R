# 4.8 - Exercise
### 1 - Create a data frame and export it to the following formats: ###
        # csv
        # rds
        # xlsx
        # fst
        # SQLite

# 1 - Which format had the minimum write time?

# load packages
library(dplyr)
library(xlsx)
library(fst)
library(RSQLite)

my.N <- 10000
my_df <- data.frame(x = 1:my.N,
                    y = runif(my.N))

# Export data frame to .csv
write.csv(my_df, 
          "C:/Analyzing-Financial-and-Economic-with-R/table/my_df.csv")

# Export data frame to .rds
saveRDS(my_df,
        "C:/Analyzing-Financial-and-Economic-with-R/table/my_df.rds")


# Export data frame to .xlsx
write.xlsx(my_df,
           sheetName = "plan1",
           file = "C:/Analyzing-Financial-and-Economic-with-R/table/my_df.xlsx")

# Export data frame to .fst
write.fst(my_df,
             "C:/Analyzing-Financial-and-Economic-with-R/table/my_df.fst")

# Export data frame to SQLite
## Create file database
f.sqlite <- "C:/Analyzing-Financial-and-Economic-with-R/table/my_df.SQLITE"

## Set connection to the databse
my_con <- dbConnect(drv = SQLite(), f.sqlite)

## Write database
dbWriteTable(conn = my_con, 
             name = "table1",
             value = my_df)

## Close connection to the databse
dbDisconnect(my_con)

### 2 - Qual formato tem a gravacao mais rapida?
# Time to write .csv
twcsv <- system.time(write.csv(my_df, 
                   "C:/Analyzing-Financial-and-Economic-with-R/table/my_df.csv"))

t_write_csv <- data.frame(id = 1, x = "csv", y = twcsv[3])

# Time to write .rds
twrds <- system.time(saveRDS(my_df,
                             "C:/Analyzing-Financial-and-Economic-with-R/table/my_df.rds"))

t_write_rds <- data.frame(id = 2, x = "rds", y = twrds[3])

# Time to write .xlsx
twxlsx <- system.time(write.xlsx(my_df,
                       sheetName = "plan1",
                       file = "C:/Analyzing-Financial-and-Economic-with-R/table/my_df.xlsx"))

t_wxlsx <- data.frame(id = 3, x = "xlsx", y = twxlsx[3])

# Time to write .fst

twfst <- system.time(write.fst(my_df,
                               "C:/Analyzing-Financial-and-Economic-with-R/table/my_df.fst"))

t_wfst <- data.frame(id = 4, x = "fst", y = twfst[3])

# Time to write .SQLITE
## Create file database
f.sqlite2 <- "C:/Analyzing-Financial-and-Economic-with-R/table/my_df.SQLITE"

## Set connection to the database
my_con2 <- dbConnect(drv = SQLite(), f.sqlite2)

## Write database
dbWriteTable(conn = my_con2, 
             name = "table",
             value = my_df)

twSQLITE <- system.time(dbWriteTable(conn = my_con2, 
                                     name = "table",
                                     value = my_df,
                                     overwrite = TRUE,
                                     append = FALSE))

t_wSQLITE <- data.frame(id = 5, x = "SQLITE", y = twSQLITE[3])

## Close connection to the database
dbDisconnect(my_con2)

# create a data frame with the time to write each file format
df_tw <- t_write_csv %>% 
        full_join(t_write_rds) %>%
        full_join(t_wxlsx) %>%
        full_join(t_wfst) %>%
        full_join(t_wSQLITE)

# Create column names
names <- c("id", "format", "seconds")
colnames(df_tw) <- names

# Order the data frame by column seconds
df_tw %>%
        arrange(seconds)
# Save the data frame
write.csv(df_tw,
          "C:/Analyzing-Financial-and-Economic-with-R/table/df_tw.csv",
          row.names = FALSE)

### 3 - Change the value of my.N to 1000000 ###
### Does the change modify the answers to the previous questions?
### I can't run due my computer was unable to run the code.

### 4 - Download the data of IBOVESPA ###
# Get the content of the data
# How many columns there are in the data?
# Which the names of the variables?

# Set link
lnk <- "https://github.com/msperlin/GetITRData_auxiliary/raw/master/InfoBovespaCompanies.csv"

# set a file in the directory to save the .csv file
csv_file <- "C:/Analyzing-Financial-and-Economic-with-R/data/InfoBovespaCompanies.csv"

# Download
download.file(url = lnk,
              destfile = csv_file)

# Read the data
ibv_df <- read.csv(csv_file,
                   header = TRUE,
                   sep = ",",
                   dec = ".",
                   encoding = "UTF-8")

# Use of the glimpse function to get the content of the data
glimpse(ibv_df)

### 5 - ###
# Download the data from http://sistemas.cvm.gov.br/cadastro/SPW_CIA_ABERTA.ZIP
# How many companies there are?

# Set link
lnk2 <- "http://sistemas.cvm.gov.br/cadastro/SPW_CIA_ABERTA.ZIP"

# Set the file
cvm_file <- "C:/Analyzing-Financial-and-Economic-with-R/data/SPW_CIA_ABERTA.zip"  

# Download
download.file(url = lnk2,
              mode = "wb",
              destfile = cvm_file)

# Unzip the file
unzip(zipfile = cvm_file,
      exdir = "C:/Analyzing-Financial-and-Economic-with-R/data")
# Read the data
cvm_df <- read.delim2("C:/Analyzing-Financial-and-Economic-with-R/data/SPW_CIA_ABERTA.txt",
                     header = TRUE,
                     sep = "\t",
                     quote = "\"",
                     dec = ",",
                     fill = TRUE,
                     comment.char = "",
                     encoding = "Latin-1")

head(cvm_df)

dim_df<- dim(cvm_df)
cat("There are", dim_df[1], "companies.")
