#!/bin/bash
EXECPATH=`dirname $0`
cd $EXECPATH
cd ..

rm build -Rf
sphinx-build en build

sphinx-build -b latex en build/pdf
rubber --into build/pdf --pdf build/pdf/Doctrine2ORM.tex

wget https://github.com/doctrine/common/zipball/master -O /tmp/doctrine-common-source.zip
unzip /tmp/doctrine-common-source.zip -d /tmp/doctrine-common-source
docblox -d /tmp/doctrine-common-source/doctrine-common-* -t build/api --defaultpackagename=Doctrine --title=Doctrine --ignore="tests/*"
rm -rf /tmp/doctrine-common-source*
