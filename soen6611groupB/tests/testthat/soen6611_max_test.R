library(soen6611groupB)
context("soen6611groupB max tests")

test_that("Correct max for fixed array", {
  expect_equal(1000, Soen6611Max(c(5, 6, 100, 1000, 4)))
  expect_equal(100, Soen6611Max(c(5, 6, -4, 100)))
  expect_equal(-5, Soen6611Max(c(-5, -6, -100, -1000)))
} )

test_that("Correct max for fixed array of one element", {
  expect_equal(4, Soen6611Max(c(4)))
  expect_equal(-4, Soen6611Max(c(-4)))
  expect_equal(0, Soen6611Max(c(0)))
} )

test_that("Correct max for random array compared to buit-in function", {
  arr <- sample(0:100, 100, replace=FALSE)
  expect_equal(max(arr), Soen6611Max(arr))
} )
