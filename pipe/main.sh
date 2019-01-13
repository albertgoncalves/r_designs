#!/usr/bin/env bash

# via https://geoinformatics.uk/posts/r-patterns.html

set -e

data() {
    cat ../data.csv
}

square() {
    Rscript square.R
}

cube() {
    Rscript cube.R
}

main() {
    cd src/
    data | square | cube
    data | cube | square
}

main
