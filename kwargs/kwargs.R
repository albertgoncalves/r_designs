#!/usr/bin/env Rscript

f = function(a, b, c) {
    for (x in list("a", "b", "c")) {
        y = eval(parse(text=x))
        cat(paste(x, "=", y, "\n"))
    }
}

main = function() {
    a = "String"
    b = 1000L
    c = TRUE

    args = list(a, b, c)
    kwargs = list(c=a, a=b, b=c)
    mixed = list(c=a, c, b=b)

    for (xs in list(args, kwargs, mixed)) {
        cat("\n")
        do.call(f, xs)
    }
}

if (sys.nframe() == 0) {
    main()
}
