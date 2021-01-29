# Setup CRAN Mirror
r = getOption("repos")
r["CRAN"] = "http://cran.us.r-project.org"
options(repos = r)
# Install Blogdown
install.packages("blogdown")
# Install Hugo
blogdown::install_hugo()
