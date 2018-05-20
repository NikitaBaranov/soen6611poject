library(soen6611groupB)
context("soen6611groupB.max tests")

test_that("Correct max for fixed array", {
  expect_equal(1000, soen6611.max(c(5,6,100,1000,4)))
  expect_equal(100, soen6611.max(c(5,6,-4,100)))
  expect_equal(-5, soen6611.max(c(-5,-6,-100,-1000)))
} )

test_that("Correct max for fixed array of one element", {
  expect_equal(4, soen6611.max(c(4)))
  expect_equal(-4, soen6611.max(c(-4)))
  expect_equal(0, soen6611.max(c(0)))
} )

test_that("Correct max for random array compared to buit-in function", {
  arr <- sample(0:100, 100, replace=FALSE)
  expect_equal(max(arr), soen6611.max(arr))
} )
