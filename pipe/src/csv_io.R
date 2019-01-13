#!/usr/bin/env Rscript

# via https://geoinformatics.uk/posts/r-patterns.html

csv_in = function() {
    return(read.table(file("stdin"), sep=",", header=TRUE))
}

csv_out = function(data) {
    write.table(data, sep=",", quote=FALSE, row.names=FALSE)
}
