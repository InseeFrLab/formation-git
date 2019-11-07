#!/usr/bin/Rscript

# Si besoin de modifier des extensions png
# ext <- 'PNG'
# pattern <- paste0(ext, '$')
# from <- list.files(pattern = pattern, recursive = TRUE)
# to <- sub(pattern, tolower(ext), from)
# file.rename(from, to)

# Les chapîtres doivent être générés indépendamment les uns des autres
# Pour cela, on va exécuter rmarkdown::render() dans des sous-processus isolés
safe_render = function(f) {
  callr::r(function(input) {
    rmarkdown::render(input, output_options = list(self_contained = TRUE), envir = new.env())
  }, user_profile = TRUE, show = TRUE, args = list(f))
}

f = list.files('supports', 'Rmd$', full.names = TRUE, recursive = TRUE)
o = sapply(f, safe_render)
dir.create('html')
copied = file.copy(o, 'html')
stopifnot(all(copied))
