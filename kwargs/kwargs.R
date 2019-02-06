#!/usr/bin/env Rscript

f = function(a, b, c) {
    for (x in list("a", "b", "c")) {
        y = eval(parse(text=x))
        cat(paste(x, "=", y, "\n"))
    }
}

inject = function(f, xs) {
    return(do.call(deparse(substitute(f)), xs))
}

"%()%" = function(f, xs) {
    return(inject(f, xs))
}


main = function() {
    d = "String"
    e = 1000L
    f = TRUE

    args = list(d, e, f)
    kwargs = list(a=d, b=e, c=f)
    mixed = list(c=d, f, b=e)

    for (xs in list(args, kwargs, mixed)) {
        cat("\n")
        f %()% xs
    }
}

if (sys.nframe() == 0) {
    main()
}
