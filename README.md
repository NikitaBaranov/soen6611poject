# soen6611poject
The descriptive statistics R package.
Main goals is to provide user with quantitatively description of a collection of data.

## Usage
### Api
| Function name    | Result descpiption                                                                                  |
|------------------|-----------------------------------------------------------------------------------------------------|
| Soen6611Min()    | is the smallest of the values in the given data set                                                 |
| Soen6611Max()    | is the largest of the values in the given data set                                                  |
| Soen6611Mode()   | is the value that appears most frequently in the given data set                                     |
| Soen6611Median() | is the middle number if n is odd, and is the arithmetic mean of the two middle numbers if n is even |
| Soen6611Mean()   | arithmetic mean                                                                                     |
| Soen6611Std()    | standard deviation                                                                                  |

### Load our Package
library(soen6611groupB) - it will load current library

## Development
### Install
In console:
- install.packages("devtools")  - install tools to build package
- install.packages("roxygen2")  - install dcoumentation generation tool

### Open Project
Inside R: File -> Open Project -> soen6611groupB.Rproj

### Testing
- Tutorial - https://www.youtube.com/watch?v=u2KDSY_8Ay4&t=11s
- Installing - 'install.packages("testthat")'
- run the tests Build -> Test Package
