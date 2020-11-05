if (file.exists('~/.Rprofile')) sys.source('~/.Rprofile', envir = environment())



colorize <- function(x, color) {
  if (knitr::is_latex_output()) {
    sprintf("\\textcolor{%s}{%s}", color, x)
  } else if (knitr::is_html_output()) {
    sprintf("<span style='color: %s;'>%s</span>", color, 
            x)
  } else x
}




with_def <- (function() {
  
  glossary <- yaml::read_yaml("glossary.yml")
  glossary <- as.data.frame(do.call(rbind, glossary), stringsAsFactors = FALSE)
  
  function(term, def) {
    if (missing(def)) {
      def <- unlist(glossary[glossary$name == term, "desc"])
    }
    sprintf('<abbr title="%s"><b>%s</b></abbr>', def, term)
  }
  
})()

render_rmd <- function(x) return(cat(htmltools::includeText(x)))



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
    opening_div = sprintf('<div class="fold %s">', options$fold)
    closing_div = '</div>'
    paste(c(opening_div, x, closing_div), collapse = '\n')
  })
  
  format
}
