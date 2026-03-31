#!/bin/bash
# Script 2: FOSS Package Inspector (Unit 2)
# Author: Tannu Kumari

PACKAGE="apache2"

echo "========================================="
echo "   FOSS Package Inspector"
echo "========================================="
echo "Checking package: $PACKAGE"
echo "-----------------------------------------"

# Checking if package is installed
if dpkg -l | grep -q $PACKAGE; then
    echo "Status   : Installed"

    # Geting version of the installed package
    VERSION=$(dpkg -s $PACKAGE | grep Version | cut -d' ' -f2)
    echo "Version  : $VERSION"

else
    echo "Status   : Not Installed"
fi

echo "-----------------------------------------"

# Case statement for package description
case $PACKAGE in
    apache2)
        echo "Description: Apache HTTP Server is an open-source web server used to host websites."
        ;;
    mysql)
        echo "Description: MySQL is an open-source relational database management system."
        ;;
    firefox)
        echo "Description: Firefox is an open-source web browser focused on privacy."
        ;;
    git)
        echo "Description: Git is a distributed version control system for tracking code changes."
        ;;
    *)
        echo "Description: No information available for this package."
        ;;
esac

echo "========================================="
