#!/usr/bin/env Rscript

# via https://geoinformatics.uk/posts/r-patterns.html

source("csv_io.R")
source("utils.R")

if (sys.nframe() == 0) {
    data = csv_in()
    data$cube = cube(data$value)
    csv_out(data)
}
