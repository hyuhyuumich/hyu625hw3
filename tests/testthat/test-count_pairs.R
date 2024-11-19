library(testthat)

test_that("count_pairs works correctly", {
  expect_equal(count_pairs (1 , 1), 1)
  expect_equal(count_pairs (10 , 10), 4)
})
