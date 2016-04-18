## R
## Note that you will still need to confirm some installations at the terminal
# sudo add-apt-repository ppa:marutter/rrutter
# sudo apt-get update
# sudo apt-get install r-base r-base-dev
cd ~/Downloads

## Packages needed for R
sudo apt-get install --yes libmysqlclient-dev # RMySQL
# sudo R CMD javareconf # to check java
sudo apt-get install --yes libxml2-dev # XML package, or
sudo apt-get install --yes r-cran-xml
sudo apt-get build-dep r-cran-rjava	# rJava
# sudo apt-get install openjdk-7-jre # Java for rJava, or
# # sudo apt-get install openjdk-6-jre # Java for rJava, or
# # sudo apt-get install openjdk-6-* # you might prefer openjdk-7-jdk # sudo apt-get install openjdk-7-*
sudo apt-get install --yes libcurl4-openssl-dev # required for swirl(); see
# https://github.com/swirldev/swirl/wiki/Installing-swirl-on-Linux
sudo apt-get install littler # contains Rscript to run r-cusomize.R
sudo apt-get install r-base-dev	# needed to install package "devtools"
sudo apt-get install libcurl4-openssl-dev # curl dev
sudo apt-get install --yes libssl-dev

# Microsoft R Open (RRO)
# the enhanced distribution of R from Revolution Analytics.
# source: http://mran.revolutionanalytics.com/download/#download

dpkg -l make gcc gfortran g++ # to check for packages before intalling

sudo apt-get install make gcc gfortran g++ 
wget -O MRO.deb https://mran.revolutionanalytics.com/install/mro/3.2.3/MRO-3.2.3-Ubuntu-15.4.x86_64.deb
# RevoMath for multi-threading (optional)
wget -O MKL.tar.gz https://mran.revolutionanalytics.com/install/mro/3.2.3/RevoMath-3.2.3.tar.gz
sudo dpkg -i MRO.deb
tar -xzvf MKL.tar.gz
cd RevoMath
sudo ./RevoMath.sh # requires user input
cd ~/Downloads
rm MRO.deb MKL.tar.gz
rm -rf RevoMath 


## RStudio
sudo apt-get install libjpeg62
wget -O rstudio.deb https://download1.rstudio.org/rstudio-0.99.489-amd64.deb
sudo dpkg -i rstudio.deb
rm rstudio.deb

cd - # toggle to previous directory

# # R Profile
# cp ./.Rprofile ~/ # needed to hard code CRAN repo to be used
Rscript r-customize.R # depends on R