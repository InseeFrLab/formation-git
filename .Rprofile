if (file.exists('~/.Rprofile')) sys.source('~/.Rprofile', envir = environment())

options(htmltools.dir.version = FALSE)

collaboratif_format = function(...) {
  # init
  html_deps = list(
    htmltools::htmlDependency(
      'hide-output', 1, 
      here::here('supports', 'js'), 
      script = 'hideOutput.js'
    ), 
    htmltools::htmlDependency(
      'collaboratif-style', 1, 
      here::here('supports'), 
      stylesheet = 'style.css', 
      all_files = FALSE
    )
  )
  
  html_format = function(
    toc = TRUE, toc_float = TRUE, code_folding = 'show', 
    number_sections = TRUE, extra_dependencies = NULL, 
    ...
  ) {
    rmarkdown::html_document(
      toc = toc, toc_float = toc_float, code_folding = code_folding,
      number_sections = number_sections, 
      extra_dependencies = c(html_deps, extra_dependencies), 
      ...
    )
  }
    
  format = html_format(...)
  
  # create a new chunk option for code folding
  knitr::render_markdown()
  default_chunk_hook = knitr::knit_hooks$get('chunk')
  format$knitr$knit_hooks = list(chunk = function(x, options) {
    x = default_chunk_hook(x, options)
    if (is.null(options$fold)) return(x)
    classes = paste0('.', c('fold', unlist(strsplit(options$fold, ' '))))
    opening_div = paste0(':::{', paste(classes, collapse = ' '), '}')
    closing_div = ':::'
    paste(c(opening_div, x, closing_div), collapse = '\n')
  })
  
  format
}
