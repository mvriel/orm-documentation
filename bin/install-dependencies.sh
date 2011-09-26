#!/bin/bash
sudo apt-get install python25 python25-dev texlive-full rubber
sudo easy_install pygments
sudo easy_install sphinx

sudo apt-get install wget
sudo pear channel-discover pear.michelf.com
sudo pear channel-discover pear.docblox-project.org
sudo pear install docblox/docblox-beta
