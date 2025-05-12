# readug package names from the packages text file
packages_to_install <- readLines("packages.txt")
# Installing the packages
installed <- packages %in% rownames(installed.packages())
if (any(!installed)) {
    install.packages(packages[!installed])
}
# Loading the packages
lapply(packages_to_install, library, character.only = TRUE)
