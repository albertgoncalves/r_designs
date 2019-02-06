#!/usr/bin/env Rscript

"%()%" = function(f, xs) {
    return(do.call(deparse(substitute(f)), xs))
}

main = function() {
    n = 75
    x = 1:n
    p = x / n
    s = rpois(n, n)
    y = rbinom(n, s, p)

    types =
        c( "p"
         , "l"
         , "b"
         , "c"
         , "o"
         , "h"
         , "s"
         , "S"
         )

    args = list(x, y, xlab="x", ylab="y")

    for (t in types) {
        main = sprintf("type='%s'", t)
        plot %()% c(args, list(type=t, main=main))
    }
}

if (sys.nframe() == 0) {
    main()
}
