#!/usr/bin/env Rscript

# via https://geoinformatics.uk/posts/r-patterns.html

new_object = function(path) {
    return(source(path)$value)
}

if (sys.nframe() == 0) {
    arith = new_object("arith.R")
    print(arith$square(2))
    print(arith$cube(3))
}
