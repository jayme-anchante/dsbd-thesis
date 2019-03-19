#!/bin/bash
IMAGE=dsbd-thesis
echo "compiling $1"
docker run --rm -v $PWD:/home/ -it $IMAGE sh -c "R --quiet -e 'library(tinytex); tinytex::pdflatex(as.character(\"$1\"))'"
