#!/usr/bin/env bash

# via https://geoinformatics.uk/posts/r-patterns.html

set -e

main() {
    cd src/
    data | square | cube
    data | cube | square
}

data() {
    cat ../data.csv
}

square() {
    Rscript square.R
}

cube() {
    Rscript cube.R
}

main
