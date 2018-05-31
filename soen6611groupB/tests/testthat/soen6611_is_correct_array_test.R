library(soen6611groupB)
context("soen6611 isCorrectArray tests")

test_that("Correct max for fixed array", {
  expect_true(Soen6611IsCorrectArray(c(5, 6, 100, 1000, 4)))
  expect_false(Soen6611IsCorrectArray(c(5, 6, 100, 1000, 4, 'p')))
} )
