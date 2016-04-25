# temporary Rprofile to hardcode a CRAN mirror
# needed to install R packages (r-customize.R)

# You may replace this profile before or after installtion
# & customization.

.First <- function() {
    options(
    repos = c(CRAN = "https://cran.rstudio.com/"),
    browserNLdisabled = TRUE,
    deparse.max.lines = 2, 
    unzip = 'internal') # needed for devtools::install_github
}
