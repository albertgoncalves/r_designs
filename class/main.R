#!/usr/bin/env Rscript

# via https://geoinformatics.uk/posts/r-patterns.html

obj_file = function(path) {
    return(source(path)$value)
}

main = function() {
    f = obj_file("object.R")

    for (x in 2:6) {
        print(f(x))
    }

    print(ls())
}

if (sys.nframe() == 0) {
    main()
}
