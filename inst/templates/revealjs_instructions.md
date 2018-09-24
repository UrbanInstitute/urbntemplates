# Instructions
## Slides

`template.Rmd` and its associated files create a revealjs slide show. "knitting" `template.Rmd` creates .html slides.

## Included documents and files:

* template.Rmd
* .gitignore
* www/web_report.css

## Adding content

revealjs slides can contain text formatted with Markdown, analytic code, and code output such as tables and plots. Code can be included in "code chunks". Code chunks look like this:

```{r chunk-name}
1 + 1
```

To learn more about Markdown visit: https://daringfireball.net/projects/markdown/syntax

To learn more about R Markdown visit here: https://rmarkdown.rstudio.com/

## Web hosting

revealjs presentations can be hosted online for free using GitHub pages. It is simplest to rename template.Rmd to index.Rmd and then knit the document into index.html. Add index.html to the top directory or a new directory called docs/, and then push the content to the master repository on GitHub. Go to settings and follow the prompts under GitHub pages to set up the web hosting. 

It is typically useful to copy the generated link to the content and paste it in the website field at the top of the front page of the repository. 
