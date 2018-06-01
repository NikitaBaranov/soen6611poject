library(soen6611groupB)
context("soen6611groupB Median tests")

test_that("Correct Median for fixed array", {
  expect_equal(6, Soen6611Median(c(5, 6, 100, 1000, 4)))
  expect_equal(5.5, Soen6611Median(c(5, 6, -4, 100)))
  expect_equal(-53, Soen6611Median(c(-5, -6, -100, -1000)))
} )

test_that("Correct Median for fixed array of one element", {
  expect_equal(4, Soen6611Median(c(4)))
  expect_equal(-4, Soen6611Median(c(-4)))
  expect_equal(0, Soen6611Median(c(0)))
} )

test_that("Correct Median for random array compared to buit-in function", {
  arr <- sample(0:100, 100, replace=FALSE)
  expect_equal(median(arr), Soen6611Median(arr))
} )

test_that("Incorrect array to Median ", {
  expect_error(Soen6611Median(c()))
  expect_error(Soen6611Median(c(5, 6, 100, 1000, 4, 'p')))
} )
