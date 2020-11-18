#------------------------------------------------------------------------------#
# Download the data frame of the CMV (comissão de valores imobiliários)        #
# Data available at http://sistemas.cvm.gov.br/cadastro/SPW_CIA_ABERTA.ZIP"    #
# Saves the file in a temporary R folder.                                      #
#------------------------------------------------------------------------------#

library(dplyr)
library(readr)

winTemp <- tempdir() ## temporary R folder on windows
winTemp              ## show the temporary R folder on windows

# Set link and file
data_link <- "http://sistemas.cvm.gov.br/cadastro/SPW_CIA_ABERTA.ZIP"

data_file <- tempfile(fileext = "SPW_CIA_ABERTA.zip",
                      tmpdir = tempdir())

# Start download
download.file(url = data_link, 
              destfile = data_file,
              mode = "wb")

# Use the unzip function to unzip the file to a desktop folder 'data_files'
unzip(zipfile = data_file, 
      exdir = "C:/Robson/tmp/data_files")

# Read the file
df <- read.delim2("C:/Robson/tmp/data_files/SPW_CIA_ABERTA.txt",
                  header = TRUE,
                  sep = "\t", 
                  quote = "\"",
                  dec = ",",
                  fill = TRUE,
                  comment.char = "",
                  encoding = "latin1")

# Delete temporary file
file.remove(data_file)

# Check available columns
names(df)
