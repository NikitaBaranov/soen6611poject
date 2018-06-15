# soen6611poject
The descriptive statistics R package.
Main goals is to provide user with quantitatively description of a collection of data.

## Usage
### Api
| Function name             | Result descpiption                                                                                  |
|---------------------------|-----------------------------------------------------------------------------------------------------|
| `Soen6611Min(<array>)`    | is the smallest of the values in the given data set                                                 |
| `Soen6611Max(<array>)`    | is the largest of the values in the given data set                                                  |
| `Soen6611Mode(<array>)`   | is the value that appears most frequently in the given data set                                     |
| `Soen6611Median(<array>)` | is the middle number if n is odd, and is the arithmetic mean of the two middle numbers if n is even |
| `Soen6611Mean(<array>)`   | arithmetic mean                                                                                     |
| `Soen6611Std(<array>)`    | standard deviation                                                                                  |

### Load our Package
`library(soen6611groupB)` - it will load current library

## Development
### Install
In console:
- `install.packages("devtools")`  - install tools to build package
- `install.packages("roxygen2")`  - install dcoumentation generation tool
- `install.packages("testthat")`  - install testing tool

### Open Project
Inside R: File -> Open Project -> soen6611groupB.Rproj
