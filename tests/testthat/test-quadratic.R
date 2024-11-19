library(testthat)

test_that("quaratic works correctly", {
  expect_equal(quadratic (1 , 4 , 1), -3.7320508)
  expect_equal(quadratic (1 , -2 , 1), 1)
})
