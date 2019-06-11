#!/usr/bin/Rscript

f = list.files('supports', 'Rmd$', full.names = TRUE, recursive = TRUE)
o = sapply(f, function(f) rmarkdown::render(f, output_options = list(self_contained = TRUE)))
dir.create('artifacts')
copied = file.copy(o, 'artifacts')
stopifnot(all(copied))
