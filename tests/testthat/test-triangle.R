library(testthat)

test_that("triangle works correctly", {
  expect_equal(triangle ( matrix ( c (1 , 2 , 2 , 3) , 2 , 2)), FALSE)
  expect_equal(triangle ( matrix ( c (1 , 2 , 3 , 2 , 3 , 1) , 3 , 2)), TRUE)
})
