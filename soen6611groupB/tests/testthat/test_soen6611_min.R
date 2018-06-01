library(soen6611groupB)
context("soen6611groupB Min tests")

test_that("Correct min for fixed array", {
  expect_equal(4, Soen6611Min(c(5, 6, 100, 1000, 4)))
  expect_equal(-4, Soen6611Min(c(5, 6, -4, 100, 1000)))
  expect_equal(0, Soen6611Min(c(5, 6, 100, 1000, 0)))
} )

test_that("Correct min for fixed array of one element", {
  expect_equal(4, Soen6611Min(c(4)))
  expect_equal(-4, Soen6611Min(c(-4)))
  expect_equal(0, Soen6611Min(c(0)))
} )

test_that("Correct min for random array compared to buit-in function", {
  arr <- sample(0:100, 100, replace=FALSE)
  expect_equal(min(arr), Soen6611Min(arr))
} )

test_that("Incorrect array to min ", {
  expect_error(Soen6611Min(c()))
  expect_error(Soen6611Min(c(5, 6, 100, 1000, 4, 'p')))
} )
