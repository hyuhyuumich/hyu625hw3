library(testthat)

test_that("matrix_kendall works correctly", {
  expect_equal(matrix_kendall ( matrix ( c (1 , 2 , 2 , 1) , 2 , 2)),1)
  expect_equal(matrix_kendall ( matrix ( c (2 , 2 , 1 , 1) , 2 , 2)),-1)
})
