#!/usr/bin/env Rscript

'%|>%' = function(x, f) {
    return(f(x))
}

'%.%' = function(f, g) {
    return(function(x) {
        f(g(x))
    })
}

'%|.%' = function(f, g) {
    return(function(x) {
        g(f(x))
    })
}

if (sys.nframe() == 0) {
    x = as.integer(10)

    f = function(x) {
        return(function(y) {
            return(x + y)
        })
    }

    g = function(x) {
        return(rep(x, x))
    }

    exprs = list( x %|>% f(x) %|>% g %|>% head %|>% sum
                , (sum %.% head %.% g %.% f(x))(x)
                , (f(x) %|.% g %|.% head %|.% sum)(x)
                )

    for (expr in exprs) {
        print(expr)
    }
}
