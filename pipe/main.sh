#!/usr/bin/env bash

# via https://geoinformatics.uk/posts/r-patterns.html

cd src/
cat ../data.csv | Rscript square.R | Rscript cube.R
cat ../data.csv | Rscript cube.R | Rscript square.R
