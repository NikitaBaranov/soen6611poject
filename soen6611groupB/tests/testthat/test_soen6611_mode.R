library(Soen6611GroupB)
context("soen6611groupB Mode tests")

test_that("Correct Mode for fixed array", {
  expect_equal(6, Soen6611Mode(c(5, 6, 100, 6, 4)))
  expect_equal(1000, Soen6611Mode(c(5, 6, -4, 1000, 1000)))
  expect_equal(0, Soen6611Mode(c(5, 0, 100, 1000, 0)))
} )

test_that("Correct Mode for fixed array of one element", {
  expect_equal(NA, Soen6611Mode(c(4)))
  expect_equal(NA, Soen6611Mode(c(-4, 1, 4, 8, 7)))
} )

test_that("Incorrect array to Mode ", {
  expect_error(Soen6611Mode(c()))
  expect_error(Soen6611Mode(c(5, 6, 100, 1000, 4, 'p')))
} )
