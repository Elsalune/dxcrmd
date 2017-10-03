#' Generate a DXC markdown document
#'
#' @return A databook.
html_DXC <- function() {

header <- system.file("rmarkdown/templates/dxc_template/skeleton/header.html",
                      package="dxcrmd")

style <- system.file("rmarkdown/templates/dxc_template/skeleton/styles.css",
                     package="dxcrmd")

  # call the base html_document function
  rmarkdown::html_document(title = " ", # purpose ?
  	                        toc = TRUE,
                            toc_float = TRUE,
                            df_print = "paged",
                            number_sections = FALSE,
                            css = style,
                            code_folding = "hide",
                            includes = rmarkdown::includes(in_header = header))
}
