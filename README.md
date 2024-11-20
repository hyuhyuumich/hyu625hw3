
<!-- README.md is generated from README.Rmd. Please edit that file -->

# newHyu625Hw3

<!-- badges: start -->
<!-- badges: end -->

\###Overview

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

1.  Count pairs of numbers count_pairs(n,m) Description: Counts the
    number of integer pairs (x, y) in {1, 2, …, n} such that x\*y mod
    (x+y) = m Arguments: n: a numeric vector m: a numeric vector
    Returns: A numeric vector. \#Example

``` r
library(newHyu625Hw3)
#Usage: count_pairs(n, m)
#Example:
result <- count_pairs(5, 1)
print(result)
#> [1] 3
```

2.  Find triangle triangle(edges) Description:Checks if an undirected
    graph (defined by a K \* 2 matrix of edges) contains a triangle
    (cycle of length 3). Arguments: edges: A K\*2 matrix Returns: Bool
    values that whether this input matrix has the conditions to form a
    triangle. \#Example

``` r
#Usage: triangle(edges)
#Example:
triangle(matrix(c(1, 2, 2, 3, 3, 1), ncol = 2, byrow = TRUE))
#> [1] TRUE
```

3.  Solve quadratic equation quadratic(a, b, c) Description:Solves the
    quadratic equation ax^2+bx+c=0 and returns the smallest root.
    Arguments: a: a numeric vector b: a numeric vector c: a numeric
    vector Returns: A numeric vector. \#Example

``` r
#Usage: quadratic(a, b, c)
#Example:
quadratic(1, -3, 2)
#> [1] 1
```

4.  Generalized logit model gen_logit(matrix_1,x) Description:
    Calculates the probabilities for each level of Y in a generalized
    logit model. In a generalized logit model (multinomial logistic
    regression), the outcome Y is a categorical variable with K+1
    levels: 0,1,…,K, where 0 is the reference level. The model relates Y
    to covariates X as: ln(Pr(Y+K)/Pr(Y=0)) = (β_k)^T \* X Arguments:
    matrix_1: An K\*p matrix x: A vector with length p Returns: A list
    that has all probabilities. \#Example

``` r
#Usage: gen_logit(matrix_1, x)
#Example:
gen_logit(matrix(c(0, 0, 1, 2), nrow = 2, byrow = TRUE), c(1, 0))
#> [1] 0.2119416 0.2119416 0.5761169
```

5.  Matrix kendall matrix_kendall(X) Description: Given a set of
    observations x=(x1,x2,…,xn) and y=(y1,y2,…,yn), Kendall’s τ, a
    non-parametric rank correlation coefficient, is defined as: τ =
    ((number of concordant pairs) - (number of disconcordant
    pairs))/((n(-1))/2) For 1≤i\<j≤n, a pair of observations (xi, yi)
    and (xj, yj) is: Concordant if both xi\>xj, yi\>yj, or if both
    xi\<xj and yi\<yj. Discordant if xi\>xj and yi\<yj or
    ifxi<xj and yi>yj. The function should calculate Kendall’s τ between
    each row of X and y=(1,2,…,n), then return the maximun τ value
    achieved across all rows of X. Arguments: X: An m\*n matrix
    Returns:A numeric vector. \#Example

``` r
#Usage: matrix_kendall(X)
#Example:
matrix_kendall(matrix(c(1, 2, 2, 1), ncol = 2, byrow = TRUE))
#> [1] 1
```

6.  Number string Description: Finds the first position of a sequence of
    digits s in the infinite string S=“123456789101112….” Arguments:
    input_num: A number in string type. Returns: A numeric vector.
    \#Example

``` r
#Usage: num_str(input_num)
#Example:
num_str("12")
#> [1] 1
```

\###License This package is licensed under the MIT License.
