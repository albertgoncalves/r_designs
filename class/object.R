#!/usr/bin/env Rscript

# via https://www.reddit.com/r/Rlanguage/comments/abx4kv/two_unconventional_design_patterns_in_r/
# and https://geoinformatics.uk/posts/r-patterns.html
# and ?local

(function() {
    k = function(x) {
        return(f(x))
    }

    f = function(x) {
        if (x > 0) {
            x * k(x - 1)
        } else {
            1
        }
    }

    return(f)
})()
