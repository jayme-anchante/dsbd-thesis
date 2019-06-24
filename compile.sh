#!/bin/bash
IMAGE=dsbd-thesis:0.1
echo "compiling $1"
docker run --rm -v $PWD:/home/ -it $IMAGE sh -c "R --quiet -e 'library(tinytex); tinytex::pdflatex(as.character(\"$1\"))'"
