#
# Update - updates the apt-cache
#
# @params None
#
apt-update() {
    echo "## APT Update"
    sudo apt-get update
    echo "## DONE\n"
}

#
# Install - install a package or packages via apt
#
# @params list of package names (space separated)
#
apt-install() {
    echo "## APT Installing"
    sudo apt-get install -y $@
    echo "## DONE\n"
}