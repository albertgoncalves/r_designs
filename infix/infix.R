#!/usr/bin/env Rscript

"%|>%" = function(x, f) {
    return(f(x))
}

"%.%" = function(f, g) {
    return(function(x) {
        f(g(x))
    })
}

"%|.%" = function(f, g) {
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

    y = function(xx) {
        return(xx %|>% f(x) %|>% g %|>% head %|>% sum)
    }

    es = list( y
             , sum %.% head %.% g %.% f(x)
             , f(x) %|.% g %|.% head %|.% sum
             )

    for (e in es) {
        print(e(x))
    }
}
