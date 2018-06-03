library(Soen6611GroupB)
context("soen6611groupB Std tests")

test_that("Correct Std for fixed array", {
  accuracy <- 0.00001
  expect_true( (37.9072 - Soen6611Std(c(5, 6, 100, 6, 4))) <= accuracy )
  expect_true( (38.5725 - Soen6611Std(c(5, 6, -4, 10, 100))) <= accuracy )
  expect_true( (38.6781 - Soen6611Std(c(5, 0, 10, 100, 0))) <= accuracy )
} )

test_that("Correct Std for fixed array of one element", {
  expect_equal(0, Soen6611Std(c(4)))
} )

test_that("Correct min for random array compared to buit-in function", {
  accuracy <- 0.00001
  arr <- sample(0:100, 100, replace=FALSE)
  expect_true((sd(arr)*(sqrt((length(arr)-1)/length(arr))) - Soen6611Std(arr)) <= accuracy, print(arr))
} )

test_that("Incorrect array to Std ", {
  expect_error(Soen6611Std(c()))
  expect_error(Soen6611Std(c(5, 6, 100, 1000, 4, 'p')))
} )
