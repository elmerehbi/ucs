## R
## Note that you will still need to confirm some installations at the terminal

# Remove any/all R version installed including RevoUtilsMath
# Without uninstalling RevoUtilsMath (deleting directory) MKL fails to install
# where R
# .libPaths() # in R gives path to R; deleting remove R
# sudo apt-get purge r-base r-base-dev &&
# sudo rm -rfv ~/R && 
# sudo rm -rfv /etc/R && 
# sudo rm -rfv /usr/bin/R && 
# sudo rm -rfv /usr/lib/R && 
# sudo rm -rfv /usr/share/R/ &&
# sudo rm -rfv /usr/lib64/MRO-* &&
# sudo rm -rfv /usr/lib64/RR0-*

# sudo add-apt-repository ppa:marutter/rrutter
# sudo apt-get update
# sudo apt-get install --yes r-base r-base-dev

# ## Packages needed for R
# sudo apt-get install --yes libmysqlclient-dev # RMySQL
# sudo R CMD javareconf # to check java
# sudo apt-get install --yes libxml2-dev # XML package, or
# sudo apt-get install --yes r-cran-xml
# sudo apt-get build-dep r-cran-rjava	# rJava
# sudo apt-get install --yes openjdk-7-jre # Java for rJava, or
# # sudo apt-get install --yes openjdk-6-jre # Java for rJava, or
# # sudo apt-get install --yes openjdk-6-* # you might prefer openjdk-7-jdk # sudo apt-get install --yes openjdk-7-*
# sudo apt-get install --yes -y libssh2-1-dev # needed to install devtools
# sudo apt-get install --yes libcurl4-openssl-dev # required for swirl(); see
# # https://github.com/swirldev/swirl/wiki/Installing-swirl-on-Linux
# sudo apt-get install --yes littler # contains Rscript to run r-cusomize.R
# sudo apt-get install --yes libcurl4-openssl-dev # curl dev
# sudo apt-get install --yes libssl-dev
# clear

## Microsoft R Open (RRO)
# the enhanced distribution of R from Revolution Analytics.
# source: http://mran.revolutionanalytics.com/download/#download

dpkg -l make gcc gfortran g++ # to check for packages before intalling

sudo apt-get install --yes make gcc gfortran g++ 

cd ~/Downloads
# wget -O MRO.deb https://mran.revolutionanalytics.com/install/mro/3.2.4/MRO-3.2.4-Ubuntu-15.4.x86_64.deb &&
# # RevoMath for multi-threading (optional)
# wget -O MKL.tar.gz https://mran.revolutionanalytics.com/install/mro/3.2.4/RevoMath-3.2.4.tar.gz
sudo dpkg -i MRO.deb
tar -xzvf MKL.tar.gz
cd RevoMath && sudo ./RevoMath.sh # requires user input
cd ~/Downloads

## RStudio
# https://www.rstudio.com/products/rstudio/download/
sudo apt-get install --yes libjpeg62
wget -O rstudio.deb https://download1.rstudio.org/rstudio-0.99.896-amd64.deb
sudo dpkg -i rstudio.deb

# Cleaning
rm -rf MRO.deb MKL.tar.gz RevoMath rstudio.deb

# # R Profile
cp ./.Rprofile ~/ # needed to hard code CRAN repo to be used
cd ~/Downloads/ucs
# Rscript r-customize.R # depends on R
