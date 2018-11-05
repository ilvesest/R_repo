## FUNCTIONS TO BE POINTED FROM OTHER FILES##


# Function that points to data_files directory

f <- function(x) {
  # Parameters:
  # x : character, filename to read
  # Returns : full path to data_files
  
  path <- '/home/ilves/Documents/R_Rstudio/R/data_files/'
  paste(path, x, sep='')
}


# Function to display DF of dataframe column names and their types.
# In addition to print the unique data type values and number of NA-s.

info <- function(df) {
  # Parameters:
  # df : data.frame
  # Returns : df of column names and their types + info about
  #           unique data types and number of NA values
  
  name_type <- data.frame(names(df), as.vector(sapply(df, typeof)))
  colnames(name_type) <- c("column name", "data type")
  nas <- sum(is.na(df))
  unique_dtypes <- as.vector(unique(name_type$`data type`))
  cat("Data types:", unique_dtypes, fill = TRUE)
  cat("Total number of NA-s:", nas, fill = TRUE)
}