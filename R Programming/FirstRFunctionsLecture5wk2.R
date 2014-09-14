add2 <- function(x, y) {
  # Computes sum of two numbers
  # Args:
  #   x: first value
  #   y: second value to be added to first
  # Returns:
  #   The sum of x and y
  x + y
  # no need for return bc in any R function 
  # the function returns whatever the last expression was
}

above10 <- function(x) {
  # Prints subvector of objects larger than 10
  #
  # Args:
  #   x: input vector
  #
  # Returns:
  #   a subvector of all objects in x larger than 10
  use <- x > 10
  x[use]
}

above <- function(x, n = 10) {
  use <- x > n
  x[use]
}

columnmean <- function(y, removeNA = TRUE) {
  # Computes mean of each column in dataframe
  #
  # Args:
  #   y: dataframe being used
  #   removeNA: logic, invokes na.rm to remove missing or NA values
  #
  # Returns:
  #   A vector containing the mean of each column
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means  # returns means
}