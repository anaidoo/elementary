
<!-- README.md is generated from README.Rmd. Please edit that file -->
elementary
==========

<!-- badges: start -->
<!-- badges: end -->
The goal of elementary is to spread rumours

Installation
------------

You can install the development version from Github.

``` r
install.packages("elementary")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("anaidoo/elementary")
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
library(elementary)
## basic example code
whodunnit()
#> [1] "I think Professor Plum did it in the Kitchen with the Pistol"
whodunnit(4)
#> [1] "I think Reverend. Green did it in the Observatory with the Candlestick"
#> [2] "I think Mrs. Peacock did it in the Dining Room with the Poison"        
#> [3] "I think Professor Plum did it in the Spa with the Poison"              
#> [4] "I think Mrs. Peacock did it in the Hall with the Poison"
```
