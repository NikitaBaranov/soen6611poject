library(soen6611groupB)
context("soen6611groupB.min tests")

test_that("Correct min for fixed array", {
  expect_equal(4, soen6611.min(c(5,6,100,1000,4)))
  expect_equal(-4, soen6611.min(c(5,6,-4,100,1000)))
  expect_equal(0, soen6611.min(c(5,6,100,1000,0)))
} )

test_that("Correct min for fixed array of one element", {
  expect_equal(4, soen6611.min(c(4)))
  expect_equal(-4, soen6611.min(c(-4)))
  expect_equal(0, soen6611.min(c(0)))
} )

test_that("Correct min for random array compared to buit-in function", {
  arr <- sample(0:100, 100, replace=FALSE)
  expect_equal(min(arr), soen6611.min(arr))
} )
