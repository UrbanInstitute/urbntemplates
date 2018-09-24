# Instructions
## Web report

## Included files and documents

* web_report.Rmd
* .gitignore
* www/web_report.css
* iterate.R

## Adding content

`web_report.Rmd` and its associated files create a branded .html document that is perfect for storing and sharing results locally, from peer to peer, and on the web.

Web reports can contain text formatted with Markdown, analytic code, and code output such as tables and plots. Code can be included in "code chunks". Code chunks look like this:

```{r chunk-name}
1 + 1
```

To learn more about Markdown visit: https://daringfireball.net/projects/markdown/syntax

To learn more about R Markdown visit here: https://rmarkdown.rstudio.com/

The web report template includes a floating table of contents and code folding by default. The order and nesting of the table of contents is determined by titles and and subtitles in the document. In Markdown, titles and subtitles are distinguished with `#`, `##`, `###`, etc.

Tabbed material can be added and is useful for including lots of related material without creating an endless document. Add `{.tabset}` to the end of a Markdown title to make all of the heading that are one sized smaller below `{.tabset}` into a set of tabs. 

## Web hosting

Web reports can be hosted online for free using GitHub pages. It is simplest to rename template.Rmd to index.Rmd and then knit the document into index.html. Add index.html to the top directory or a new directory called docs/, and then push the content to the master repository on GitHub. Go to settings and follow the prompts under GitHub pages to set up the web hosting. 

It is typically useful to copy the generated link to the content and paste it in the website field at the top of the front page of the repository. 
