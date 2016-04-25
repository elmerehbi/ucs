#!/usr/bin/Rscript
## For some reason Rscript doesn't run the lines in order. It keeps jumping from
# oen package to another.
####################################
## R environment customization script
# to automate package installation
####################################
## To run execute in a terminal:
# Rscript r-customize.R # depends on R
# Note: some packages might return an error; this might be due to the mirror you choose.
####################################
## Some relevant links
# Rstudio's Quick list of useful R packages: http://bit.ly/useful_R_packages
####################################

# ## Basic packages
# #################
install.packages("devtools") # install CRAN's devtools)
devtools::install_github("hadley/devtools") # install development version
if (!require("devtools")) install.packages("devtools")
library(devtools) # to install from source (eg; github)
install.packages("checkpoint")
install.packages("packrat") # dependency management system for R
install.packages("downloader")
install.packages("rJava")
install.packages("xlsxjars")
install.packages("xlsx")
install.packages("data.table")
install.packages(c("Hmisc", "jpeg"))
install.packages("RJSONIO") # also required for "WDI" & gist publish in "rCharts"
install.packages("xtable")

# if (!requireNamespace('htmlwidgets') || packageVersion('htmlwidgets') <= '0.3.2')
#   devtools::install_github('ramnathv/htmlwidgets')
install.packages("htmlwidgets")

# DataTables see: https://rstudio.github.io/DT/
# installs an R interface to the Js DataTables
# will ask to select a server
# devtools::install_github('rstudio/DT')
install.packages('DT')

# Datasets
install.packages(c("UsingR", "MASS", "kernlab", "ISLR", "ElemStatLearn", "AppliedPredictiveModeling"))
# others
## ISLR: http://www-bcf.usc.edu/~gareth/ISL/data.html

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

# pipecomposer - visuals dplyr's magrittr pipelines & when done returns the code
# https://github.com/jcheng5/pipecomposer
# devtools::install_github("jcheng5/pipecomposer")

## Swirl
# Learn R, in R. http://swirlstats.com
# devtools::install_github("swirldev/swirl") # latest development version
install.packages("swirl")
library(swirl)
install_from_swirl("R Programming") # The basics of programming in R
# install_from_swirl("R Programming Alt") # Same as the original, but modified slightly for in-class use (see below ***)
install_from_swirl("Data Analysis") # Basic ideas in statistics and data visualization
install_from_swirl("Mathematical Biostatistics Boot Camp") # One- and two-sample t-tests, power, and sample size
install_from_swirl("Open Intro") # A very basic introduction to statistics, data analysis, and data visualization
install_from_swirl("Regression Models") # The basics of regression modeling in R
install_from_swirl("Getting and Cleaning Data") # dplyr, tidyr, lubridate, oh my!
install_from_swirl("Statistical Inference") # This intermediate to advanced level course closely follows the Statistical Inference course of the Johns Hopkins Data Science Specialization on Coursera

# # Visualization
# ###############
install.packages("viridis") # viridis color map
# cran.r-project.org/web/packages/viridis/vignettes/intro-to-viridis.html
install.packages("manipulate") # easy interactive plots
install.packages("quadprog") # dependancy for directlabels
install.packages("directlabels")
install.packages("ggplot2")
# ggsalt - Extra Coordinate Systems, Geoms, Statistical Transformations, Scales & Fonts for 'ggplot2'
# A compendium of 'geoms', 'coords' and 'stats' for 'ggplot2', including
# splines, 1d and 2d densities, univariate average shifted histograms and
# a new map coordinate system based on the 'PROJ.4'-library
# https://github.com/hrbrmstr/ggalt
install.packages("ggsalt")
install.packages("GGally")
install.packages("ggvis")
install.packages("gridExtra")
# R interface to dygraphs
# if (!requireNamespace('htmlwidgets'))
#   install_github('ramnathv/htmlwidgets')
# install_github('rstudio/dygraphs')
install.packages("dygraphs")

# Shiny Apps
# devtools::install_github('rstudio/shinyapps')
# # download("https://github.com/rstudio/shinyapps/archive/master.tar.gz", "shinyapps.tar.gz")
# # install.packages("shinyapps.tar.gz", repos = NULL, type = "source")
install.packages("shiny")


install.packages("shinydashboard")

# flexdashboard - Easy interactive dashboards for R
# rstudio.github.io/flexdashboard/
devtools::install_github("rstudio/flexdashboard")

# Radiant - interface for BI in R based on Shiny
install.packages("radiant", repos = "http://vnijs.github.io/radiant_miniCRAN/")
# library(radiant); radiant("marketing")

# Plotly
install.packages("plotly")
# install_github("ropensci/plotly")
# # download("https://github.com/ropensci/plotly/archive/master.tar.gz", "plotly.tar.gz")
# # install.packages("plotly.tar.gz", repos = NULL, type = "source")

install.packages("maptools") # for shapefiles
# install.packages("rgeos") # required by maptools

# rMaps (still under development) # https://rmaps.github.io/
# rCharts required for some (experimental) features
if (!requireNamespace('rCharts'))
  install_github('ramnathv/rCharts@dev')
install_github('ramnathv/rMaps')

# Google Vis
install.packages("googleVis")

## Leaftlet
# R package to create interactive web-maps based on the Leaflet JavaScript library
install.packages("leafletR")
install_github("chgrl/leafletR")
# install_github("rstudio/leaflet") # by Rstudio
install.packages("leaflet")

# Documents
###########
# for Knitr (requires TeX & Pandoc to be installed for PDFs)
install.packages(c("yaml", "htmltools", "knitr", "markdown", "rmarkdown"))

# Slidify & Libraries
install_github('ramnathv/slidify')
install_github('ramnathv/slidifyLibraries')

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

## API's
install.packages("streamR") # Access to Twitter Streaming API via R # github: https://github.com/pablobarbera/streamR
install.packages("Rfacebook") # provides an interface to the Facebook API
install.packages("GAR") # Google Analytics R

## Connect to Databases
install.packages("DBI") # database interface (DBI) definition for communication between R and relational database management systems
install.packages("RMySQL") # DBI-compliant Interface to MySQL and MariaDB Databases
install.packages("dbConnect") # Provides a graphical user interface to connect with databases that use MySQL
# install.packages("rredis") # connection to Redis

## Data scources
install.packages("Quandl")
install.packages("WDI") #github.com/vincentarelbundock/WDI

## Signal Processing & Time Series Analysis
###########################################
install.packages("signal") # Signal Processing
install.packages("TSA") # Time Series Analysis + Periodograms

## AnomalyDetection - detect anomalies which is robust, from a statistical standpoint, in the presence of seasonality and an underlying trend
# https://github.com/twitter/AnomalyDetection
devtools::install_github("twitter/AnomalyDetection")

# # Interperability with other languages
# ######################################

## Matlab
install.packages("R.matlab")
install_github("schmidtchristoph/reach/reach") # dependency: R.matlab
# ######################################

# ## Financial
#############
# install.packages("PerformanceAnalytics")
# install.packages("zoo")
# install.packages("tseries")

# # Medical packages
# ##################
# install.packages("oro.dicom")

# Big Data & High Performance / Parallel Computing
##################################################
# Packages to deal with datasets larger than RAM
install.packages("bigmemory") # Manage massive matrices with shared memory and memory-mapped files
install.packages("doParallel") # parallel computing
# install.packages("toaster") # toaster (to Aster) is a set of tools for computing and analyzing data with Teradata Aster Big Data database
# brings the power of Teradata Aster's distributed SQL and MapReduce (SQL-MR) to R on desktop and complements analysis of results with a convenient set of plotting functions.
# github.com/teradata-aster-field/toaster

# Machine Learning & Predictive Modeling
########################################
## caret - Classification And REgression Training
install.packages("caret")
install.packages("e1071") # assorted econometric & ml extensions (svm); needed when fitting a model in caret
install.packages("RANN") # required by "predict" & "preProcess" with method "knnImpute"
install.packages("randomForest")
install.packages("rattle"); install.packages("rpart.plot")
install.packages("pgmm"); install.packages("rpart")
install.packages("tree")
