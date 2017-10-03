
html_DXC <- function() {

header <- system.file("rmarkdown/templates/my_template/skeleton/header.html", package="DXCr")
style <- system.file("rmarkdown/templates/my_template/skeleton/styles.css", package="DXCr")

  # call the base html_document function
  rmarkdown::html_document(title = " ",
  	                        toc = TRUE,
                            toc_float = TRUE,
                            df_print = "paged",
                            number_sections = FALSE,
                            css = style,
                            code_folding = "hide",
                            includes = rmarkdown::includes(in_header = header))
}