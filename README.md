# Ubuntu customization script
---
(in progress)

A collection of scripts to automate customizing an Ubuntu desktop.
So far, it includes installing and customizing the following:

* R statistical language

Included scripts (not exhaustive!):

* `install.sh`
    + `install_r.sh`: installs R language
        * `.Rprofile`: your custom Rprofile if it exists
        * `r-customize.R`: installs many R packages

## Prerequisites
- A working internet connection
- 'root' access

## How to get it
  * ### With git
    - Get list of packages and install git: `sudo apt-get install git`
    - get the script: `cd ~/Downloads && git clone git://github.com/elmerehbi/ucs`

    (or you can fork the repo & clone it)

  * ### Without git
    - get & extract the script: `cd ~/Downloads && wget https://github.com/elmerehbi/ucs/tarball/master -O - | tar xz`

## How to use

### Install & customize `R` only
**Note 1**: make sure to have the repo in the Downloads directory. It is a simple script and not very smart.
**Note 2**: It installs the [Microsoft R Open (RRO) which is an enhanced distribution of R from Revolution Analytics](http://mran.revolutionanalytics.com/).


  - **Install Revolution R Open (PRO) and popular packages**.

  Note: this will automatically run ` r-customize.R ` install packages.
```S
chmod +x *.sh
sudo ./install_R.sh
```

  - To **install R packages only** (this is already done if you're installing R as instructed above.)
```S
./r-customize.R # has an Rscript shebang!
```

#### Rprofile
The `install_R.sh` script puts `.Rprofile` in your home directory. It is required for installation purposes (to hardcode a CRAN mirror). You may replace it before or after the installation with a custom one.

### License

[Licensed](LICENSE) under the [GPLv3](http://www.gnu.org/licenses/gpl.html).

Feel free to fork the repo.