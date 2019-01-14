#!/usr/bin/env Rscript

# via https://geoinformatics.uk/posts/r-patterns.html

(function() {
    square = function(x) {
        return(x * x)
    }

    cube = function(x) {
        return(x * x * x)
    }

    return(list(square=square, cube=cube))
})()
