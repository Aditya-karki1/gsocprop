# gsocproposal

An R package created as part of the GSoC 2026 test for the project:
**"Multilingual documentation of R packages"**

## Tests Completed

### Easy Test ✅
- Created `submit_proposal()` function
- Returns `TRUE` if run before March 31, 2026
- Returns `FALSE` if run after the deadline

### Medium Test ✅
- Documented using `roxygen2`
- Added `@title`, `@description`, `@return`, `@details`, `@examples`
- Deadline stored in global variable `gsoc_env$deadline`
- Not hardcoded inside the function

## Installation
```r
devtools::install_github("Aditya-karki1/gsocprop")
```

## Usage
```r
library(gsocprop)

submit_proposal()
#> [1] TRUE   # before March 31
#> [1] FALSE  # after March 31
```

## Package Structure
```
R/
├── globals.R          # deadline stored here as global variable
└── submit_proposal.R  # main function with roxygen2 docs
```

## GSoC Project

Project: Multilingual documentation of R packages  
