# Generate example data for hyu625hw3 package

# For count_pairs: Generate 20 pairs of (n, m)
example_count_pairs <- lapply(1:20, function(i) list(
  n = sample(50:100, 1),
  m = sample(1:10, 1)
))

# For gen_logit: Generate 20 sets of matrix_1 and x
example_gen_logit <- lapply(1:20, function(i) list(
  matrix_1 = matrix(rnorm(15), nrow = 5, ncol = 3),
  x = runif(3)
))

# For matrix_kendall: Generate 20 matrices
example_matrix_kendall <- lapply(1:20, function(i)
  matrix(sample(1:10, 50, replace = TRUE), nrow = 10, ncol = 5)
)

# For num_str: Generate 20 digit sequences
example_num_str <- sapply(1:20, function(i)
  paste0(sample(1:9, sample(1:5, 1), replace = TRUE), collapse = "")
)

# For quadratic: Generate 20 sets of (a, b, c)
example_quadratic <- lapply(1:20, function(i) list(
  a = sample(1:10, 1),
  b = sample(1:20, 1),
  c = sample(-10:10, 1)
))

# For triangle: Generate 20 sets of edge matrices
example_triangle <- lapply(1:20, function(i) {
  nodes <- sample(1:10, 5)
  edges <- combn(nodes, 2)
  t(edges[, sample(1:ncol(edges), 5)])
})

# Save all example datasets
usethis::use_data(
  example_count_pairs,
  example_gen_logit,
  example_matrix_kendall,
  example_num_str,
  example_quadratic,
  example_triangle,
  overwrite = TRUE
)
