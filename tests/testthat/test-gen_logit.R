test_that("gen_logit works correctly", {
  actual1 <- gen_logit(matrix(0, 2, 2), c(1, 0))
  expected1 <- c(0.3333333, 0.3333333, 0.3333333)
  expect_true(isTRUE(all.equal(actual1, expected1, tolerance = 1e-7)))
})
