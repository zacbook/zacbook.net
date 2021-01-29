# Setup CRAN Mirror
r = getOption("repos")
r["CRAN"] = "http://cran.us.r-project.org"
options(repos = r)
# Install RMarkdown
install.packages('rmarkdown')
# Install Knitr
install.packages('knitr')
# Install Blogdown
install.packages("blogdown")
# Install Hugo
blogdown::install_hugo()
