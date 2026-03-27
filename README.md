# gsocprop

An R package created as part of the GSoC 2026 test for:
**"Multilingual documentation of R packages"**

## Tests Completed

### Easy Test ✅

- Created `submit_proposal()` function
- Returns `TRUE` if run before or on March 31, 2026
- Returns `FALSE` if run after the deadline
- Function takes no arguments

### Medium Test ✅

- Documented using `roxygen2`
- Added `@title`, `@description`, `@details`, `@return`, `@examples`
- Submission deadline stored in global variable `gsoc_env$deadline`
- Deadline is NOT hardcoded inside the function
- Uses package environment `gsoc_env` defined in `globals.R`

### Hard Test ✅

- Deadline is NOT hardcoded in the `.Rd` file
- Deadline fetched from global variable at install time using `\Sexpr[stage=install]`
- Real-time countdown computed when user runs `?submit_proposal` using `\Sexpr[stage=render]`
- Example output in documentation:
  - `"The deadline is in 3 days."`
  - `"The deadline is today! Submit immediately."`
  - `"The deadline has passed, try next year!"`

## Installation
```r
devtools::install_github("Aditya-karki1/gsocprop")
```

## Usage
```r
library(gsocprop)

# Easy Test — check if proposal can be submitted
submit_proposal()
#> [1] TRUE   # if run before March 31, 2026
#> [1] FALSE  # if run after March 31, 2026

# Hard Test — view dynamic documentation
?submit_proposal
#> Details:
#> The submission deadline is fetched dynamically at install time: March 31, 2026
#> Status: The deadline is in 3 days.
```

## Package Structure
```
gsocprop/
├── DESCRIPTION
├── NAMESPACE
├── LICENSE
├── README.md
├── R/
│   ├── globals.R           # gsoc_env — deadline stored here as global variable
│   └── submit_proposal.R   # main function with roxygen2 + \Sexpr{} dynamic docs
└── man/
    └── submit_proposal.Rd  # auto-generated — contains \Sexpr[stage=install] 
                            # and \Sexpr[stage=render] macros
```

## How Dynamic Documentation Works
```
globals.R
└── gsoc_env$deadline = as.Date("2026-03-31")
        │
        ├── \Sexpr[stage=install] ──► fetched at install time
        │                             shown as: "March 31, 2026"
        │
        └── \Sexpr[stage=render]  ──► computed every time ?submit_proposal runs
                                      shown as: "The deadline is in X days."
```

## GSoC Project

- **Project:** Multilingual documentation of R packages
- **Wiki:** https://github.com/rstats-gsoc/gsoc2026/wiki/Multilingual-documentation-of-R-packages
- **Evaluating Mentor:** Heather Turner, Elio Campitelli
