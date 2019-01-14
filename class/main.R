#!/usr/bin/env Rscript

# via https://geoinformatics.uk/posts/r-patterns.html

obj = function(path) {
    return(source(path)$value)
}

if (sys.nframe() == 0) {
    arith = obj("arith.R")

    for (op in c("square", "cube")) {
        print(arith[[op]](3))
    }
}
