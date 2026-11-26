# test_app.R - Tests for our calculator
source("app.R")

test_add <- function() {
  stopifnot(add(2, 3) == 5)
}

test_subtract <- function() {
  stopifnot(subtract(10, 4) == 6)
}

test_multiply <- function() {
  stopifnot(multiply(5, 6) == 30)
}

test_divide <- function() {
  stopifnot(divide(20, 4) == 5)
}

test_divide_by_zero <- function() {
  result <- tryCatch(
    {
      divide(10, 0)
      FALSE  # Should not reach here
    },
    error = function(e) {
      TRUE   # Error was raised as expected
    }
  )
  stopifnot(result == TRUE)
}

# Run all tests
test_add()
test_subtract()
test_multiply()
test_divide()
test_divide_by_zero()

cat("All tests passed!\n")
