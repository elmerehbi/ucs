####################################
# R environment customization
# This script is automatically run by another "Ubuntu customization" script.
####################################
# ChangeLog
# 2015-02-13 made public
#
####################################
# To manually run execute:
# Rscript r-customize.R
# Warning: Manually running might not install all packages since dependencies might not have been met.
####################################

## Installing packages
install.packages("rJava")
install.packages("xlsxjars")
install.packages("xlsx")
install.packages("jsonlite")
install.packages("data.table")
install.packages(c("Hmisc", "jpeg"))

install.packages("devtools") # to 
install.packages("ggplot2")

library(devtools) # required to install packages from source

install.packages(c("httr", "rjson")) # required for "Rfacebook"

# rMaps (still under development) # https://rmaps.github.io/
require(devtools)
install_github('ramnathv/rCharts@dev') # rCharts required for some (experimental) features
install_github('ramnathv/rMaps')
# 	## alternate way
# library(downloader)
# download("https://github.com/ramnathv/rCharts/archive/master.tar.gz", "rCharts.tar.gz")
# install.packages("rCharts.tar.gz", repos = NULL, type = "source")

# Google Vis
install.packages("googleVis")

# Shiny Apps
devtools::install_github('rstudio/shinyapps')
# library(downloader)
# download("https://github.com/rstudio/shinyapps/archive/master.tar.gz", "shinyapps.tar.gz")
# install.packages("shinyapps.tar.gz", repos = NULL, type = "source")

# Plotly
install_github("ropensci/plotly")
# library(downloader)
# download("https://github.com/ropensci/plotly/archive/master.tar.gz", "plotly.tar.gz")
# install.packages("plotly.tar.gz", repos = NULL, type = "source")

# for Knitr
install.packages("yaml"); install.packages("htmltools"); install.packages("rmarkdown")

# Slidify
devtools::install_github('slidify', 'ramnathv')
devtools::install_github('slidifyLibraries', 'ramnathv')

# API's
install.packages("streamR") # Access to Twitter Streaming API via R # github: https://github.com/pablobarbera/streamR
install.packages("Rfacebook") # provides an interface to the Facebook API

