library(testthat)

test_that("num_str works correctly", {
  expect_equal(num_str ("12"),1)
  expect_equal(num_str ("21"),15)
})
