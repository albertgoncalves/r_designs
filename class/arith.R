#!/usr/bin/env Rscript

# via https://geoinformatics.uk/posts/r-patterns.html

(function() {
    return(list( square=function(a) return(a * a)
               , cube=function(a) return(a * a * a)
               ))
})()
