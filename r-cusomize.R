####################################
# R environment customization
# This script is automatically run by another "Ubuntu customization" script.
####################################
# ChangeLog
# 2015-02-13 made public
# 2015-02-28 added more packages
#
####################################
# To manually run execute:
# Rscript r-customize.R # depends on R
# Warning: Manually running might not install all packages since dependencies might not have been met.
####################################
# Other recommended packages by Rstudio's Garrett Grolemund
# Quick list of useful R packages
# https://support.rstudio.com/hc/en-us/articles/201057987-Quick-list-of-useful-R-packages
####################################

## Basic packages
#################
install.packages("devtools")
install.packages("downloader")
install.packages("checkpoint")
install.packages("rJava")
install.packages("xlsxjars")
install.packages("xlsx")
install.packages("data.table")
install.packages(c("Hmisc", "jpeg"))
install.packages("RJSONIO") # also required for "WDI"

# DataTables see: https://rstudio.github.io/DT/ 
# installs an R interface to the Js DataTables
# will ask to select a server
if (!requireNamespace('htmlwidgets') || packageVersion('htmlwidgets') <= '0.3.2')
  devtools::install_github('ramnathv/htmlwidgets')
devtools::install_github('rstudio/DT')


install.packages("xtable")

# Web scraping
##############
install.packages("XML") # read & create XML docs
install.packages("rvest") # XML & httr wrappers to make it easy to download & manipulate html & xml.
install.packages(c("httr", "rjson")) # required for "Rfacebook"
install.packages("jsonlite")
install.packages("RCurl")

## Data Wrangling
#################
install.packages(c("dplyr", "reshape2"))
install.packages("tidyr")
install.packages("sqldf") # Manipulate R data frames using SQ

## Swirl
# Learn R, in R. http://swirlstats.com
install.packages("swirl")
# devtools::install_github("swirldev/swirl") # latest development version

# Visualization
###############
install.packages("ggplot2")
install.packages("ggvis")
install.packages("gridExtra")
# R interface to dygraphs
if (!requireNamespace('htmlwidgets'))
  devtools::install_github('ramnathv/htmlwidgets')
devtools::install_github('rstudio/dygraphs')


# Shiny Apps
devtools::install_github('rstudio/shinyapps')
# download("https://github.com/rstudio/shinyapps/archive/master.tar.gz", "shinyapps.tar.gz")
# install.packages("shinyapps.tar.gz", repos = NULL, type = "source")

# Plotly
devtools::install_github("ropensci/plotly")
# download("https://github.com/ropensci/plotly/archive/master.tar.gz", "plotly.tar.gz")
# install.packages("plotly.tar.gz", repos = NULL, type = "source")

install.packages("maptools") # for shapefiles
# install.packages("rgeos") # required by maptools

# rMaps (still under development) # https://rmaps.github.io/
# rCharts required for some (experimental) features
if (!requireNamespace('rCharts'))
  devtools::install_github('ramnathv/rCharts@dev')
devtools::install_github('ramnathv/rMaps')
devtools::install_github("rstudio/leaflet")

# Google Vis
install.packages("googleVis")

## LeaftletR
# R package to create interactive web-maps based on the Leaflet JavaScript library
install.packages("leafletR")
# devtools::install_github('leafletR', 'chgrl')


# Documents
###########
# for Knitr
install.packages("yaml"); install.packages("htmltools"); install.packages("rmarkdown")

# Slidify & Libraries
devtools::install_github('ramnathv/slidify')
devtools::install_github('ramnathv/slidifyLibraries')

# Spatial & GIS
###############
install.packages("sp") # classes and methods for spatial data
install.packages("maptools") # Tools for Reading and Handling Spatial Objects
install.packages("maps") # Draw Geographical Maps
install.packages("ggmap") # Spatial Visualization with Google Maps and OpenStreetMap
install.packages("raster")
install.packages("mapdata")
install.packages("mapproj")
install.packages("gpclib")
install.packages("rdgal")
install.packages("Rgooglemaps")
install.packages("rgeos")
install.packages("rasterVis")

# Connections
#############

# API's
install.packages("streamR") # Access to Twitter Streaming API via R # github: https://github.com/pablobarbera/streamR
install.packages("Rfacebook") # provides an interface to the Facebook API

# Connect to Databases
install.packages("DBI") # database interface (DBI) definition for communication between R and relational database management systems
install.packages("RMySQL") # DBI-compliant Interface to MySQL and MariaDB Databases
install.packages("dbConnect") # Provides a graphical user interface to connect with databases that use MySQL

# Data scources
install.packages("Quandl")
install.packages("WDI") #github.com/vincentarelbundock/WDI

# Big Data
##########
# Packages to deal with datasets larger than RAM
install.packages("bigmemory") # Manage massive matrices with shared memory and memory-mapped files

# Medical packages
install.packages("oro.dicom")

# Machine Learning & Predictive Modeling
########################################
## caret - Classification And REgression Training
install.packages("caret")
install.packages("e1071") # needed when fitting a model in caret