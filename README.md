Ubuntu customization script
=============================

The repo aims to automate the process of customizing a freshly installed Ubuntu image.
Currently it only contains a script to install basic packages of the R statistical programming language. To run it you must have R installed.

Note: The "install_R.sh" installs Revolution R Open (PRO) instead of the base R.


#### Usage
In a terminal,

to install R and packages included in the r script run:

```S
chmod +x install_R.sh
sudo ./install_R.sh
```

If you already have R installed and want to install the R packages only, run:

```S
Rscript r-customize.R
```

### License

[Licensed](LICENSE) under the [GPLv3](http://www.gnu.org/licenses/gpl.html).

Feel free to fork the repo.
