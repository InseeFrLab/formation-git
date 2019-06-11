#!/usr/bin/Rscript

f = list.files('supports', 'Rmd$', full.names = TRUE, recursive = TRUE)
o = sapply(f, function(f) rmarkdown::render(f, output_options = list(self_contained = TRUE)))
dir.create('html')
copied = file.copy(o, 'html')
stopifnot(all(copied))
