## R
# sudo add-apt-repository ppa:marutter/rrutter
# sudo apt-get update
# sudo apt-get install r-base r-base-dev
cd ~/Downloads

## Revolution R Open (RRO)
# the enhanced distribution of R from Revolution Analytics.
# source: http://mran.revolutionanalytics.com/download/#download

# dpkg -l make gcc gfortran g++ # to check for packages before intalling

sudo apt-get install make gcc gfortran g++
wget http://mran.revolutionanalytics.com/install/RRO-8.0.1-Beta3-Ubuntu-14.04.x86_64.tar.gz
tar -xzf RRO-8.0.1-Beta3-Ubuntu-14.04.x86_64.tar.gz # for Ubuntu 14.04 64-bit
sudo ./install.sh

## RStudio
wget http://download1.rstudio.org/rstudio-0.97.551-amd64.deb
sudo dpkg -i rstudio-0.97.551-amd64.deb
rm rstudio-0.97.551-amd64.deb

## Packages needed for R
sudo apt-get install openjdk-6-jre # Java for rJava, or
# sudo apt-get install openjdk-6-* # you might prefer openjdk-7-jdk # sudo apt-get install openjdk-7-*
sudo apt-get install libmysqlclient-dev
# sudo R CMD javareconf # to check java
sudo apt-get install libxml2-dev # XML package, or
# sudo apt-get install libmysqlclient-dev
sudo apt-get install r-cran-xml
sudo apt-get install libmysqlclient-dev # rJava
sudo apt-get build-dep r-cran-rjava	# rJava
sudo apt-get install libmysqlclient-dev # RMySQLs


# R Profile
cp ./.Rprofile ~/ # comment out if you don't have a custom Rprofile

