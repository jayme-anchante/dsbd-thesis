FROM alpine:3.9.2
MAINTAINER Jayme Anchante <jayme.anchante@disroot.org>

RUN apk update\
 && apk add wget perl git R
RUN R -e "install.packages(c('tinytex'), repos='http://cran-r.c3sl.ufpr.br/')"
RUN R -e "library(tinytex); tinytex::install_tinytex(); tinytex::tlmgr_install(c('koma-script', 'mathtools', 'jknapltx', 'fourier', 'fira', 'mweights', 'fontaxes', 'microtype', 'xcolor', 'sidecap', 'lipsum', 'footmisc', 'wrapfig', 'ulem', 'mdframed', 'needspace', 'preview', 'ccicons', 'lineno', 'preprint', 'abstract', 'sttools', 'multirow', 'enumitem', 'bbm-macros', 'subfig', 'rsfs', 'bbm', 'tlgs', 'utopia', 'babel-portuges', 'babel-english', 'pgf', 'arara', 'hyph-utf8', 'hyphen-portuguese'))"
WORKDIR "/home/"
