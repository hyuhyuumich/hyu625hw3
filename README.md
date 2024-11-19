
<!-- README.md is generated from README.Rmd. Please edit that file -->

# newHyu625Hw3

<!-- badges: start -->
<!-- badges: end -->

The goal of newHyu625Hw3 is to tackle problems in the Biostatistics 625
course. It provides a collection of functions for mathematical
computations, graph analysis, and more.

## Installation

You can install the development version of newHyu625Hw3 from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
# pak::pak("hyuhyuumich/hyu625hw3")
#Remove the # sign when run the code 
```

\###Functions Overview:

1.  count_pairs Counts the number of integer pairs (x, y) in {1, 2, …,
    n} such that x\*y mod (x+y) = m \#Example

``` r
library(newHyu625Hw3)
#Usage: count_pairs(n, m)
#Example:
result <- count_pairs(5, 1)
print(result)
#> [1] 3
```

2.  triangle Checks if an undirected graph (defined by a K \* 2 matrix
    of edges) contains a triangle (cycle of length 3).

``` r
#Usage: triangle(edges)
#Example:
triangle(matrix(c(1, 2, 2, 3, 3, 1), ncol = 2, byrow = TRUE))
#> [1] TRUE
```

3.  quadratic Solves the quadratic equation ax^2+bx+c=0 and returns the
    smallest root.

``` r
#Usage: quadratic(a, b, c)
#Example:
quadratic(1, -3, 2)
#> [1] 1
```

4.  gen_logit Calculates the probabilities for each level of Y in a
    generalized logit model.

``` r
#Usage: gen_logit(matrix_1, x)
#Example:
gen_logit(matrix(c(0, 0, 1, 2), nrow = 2, byrow = TRUE), c(1, 0))
#> [1] 0.2119416 0.2119416 0.5761169
```

5.  matrix_kendall Computes the Kendall’s τ correlation between each row
    of a matrix X and y=(1,2,…,n), returning the maximum τ value.

``` r
#Usage: matrix_kendall(X)
#Example:
matrix_kendall(matrix(c(1, 2, 2, 1), ncol = 2, byrow = TRUE))
#> [1] 1
```

6.  num_str Finds the first position of a sequence of digits s in the
    infinite string S=“123456789101112….”

``` r
#Usage: num_str(input_num)
#Example:
num_str("12")
#> [1] 1
```

\###License This package is licensed under the MIT License.
