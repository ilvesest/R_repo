## FUNCTIONS TO BE POINTED FROM OTHER FILES##


# Function that points to data_files directory

f <- function(x) {
  # Parameters:
  # x : character, filename to read
  # Returns : full path to data_files
  
  path <- '/home/ilves/Documents/R_Rstudio/R/data_files/'
  paste(path, x, sep='')
}