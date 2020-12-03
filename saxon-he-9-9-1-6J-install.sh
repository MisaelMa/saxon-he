#!/bin/bash
pkgname="saxon-he"
_major=9.9
_minor=1.6
pkgver=${_major}.${_minor}
_pkgver=${pkgver//./-}
pkgrel=1
pkgdesc="XSLT 2.0 / XPath 2.0 and 3.0 / XQuery 1.0 and 3.0 processor for Java - Home Edition"
url="http://saxon.sourceforge.net"
license='MPL'
arch='any'
depends='java-runtime-headless'
provides='java-saxon'
conflicts='java-saxon'
namefile="SaxonHE${_pkgver}J.zip"
downloadlink="https://downloads.sourceforge.net/saxon/${namefile}"

echo '███████╗ █████╗ ██╗  ██╗ ██████╗ ███╗   ██╗    ██╗  ██╗███████╗
██╔════╝██╔══██╗╚██╗██╔╝██╔═══██╗████╗  ██║    ██║  ██║██╔════╝
███████╗███████║ ╚███╔╝ ██║   ██║██╔██╗ ██║    ███████║█████╗
╚════██║██╔══██║ ██╔██╗ ██║   ██║██║╚██╗██║    ██╔══██║██╔══╝
███████║██║  ██║██╔╝ ██╗╚██████╔╝██║ ╚████║    ██║  ██║███████╗
╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═╝╚══════╝'

echo '🅳🅾🆆🅽🅻🅾🅰🅳🅸🅽🅶'
wget ${downloadlink}

echo '🅳🅴🅲🅾🅼🅿🆁🅴🆂🆂🅸🅽🅶'
sudo unzip ${namefile}

echo '🅲🆁🅴🅰🆃🅸🅽🅶 🅵🅸🅻🅴 saxon-xquery.sh for Query'
echo '#!/bin/sh
java -cp /usr/share/java/saxon/saxon9he.jar net.sf.saxon.Query "$@"
' >saxon-xquery.sh

echo '🅲🆁🅴🅰🆃🅸🅽🅶 🅵🅸🅻🅴 saxon-xslt.sh for Transform'
echo '#!/bin/sh
java -cp /usr/share/java/saxon/saxon9he.jar net.sf.saxon.Transform "$@"
' >saxon-xslt.sh

echo '🅸🅽🆂🆃🅰🅻🅻 saxon9he.jar'
sudo install -Dm644 saxon9he.jar /usr/share/java/saxon/saxon9he.jar
echo '🅸🅽🆂🆃🅰🅻🅻 saxon-xslt.sh'
sudo install -Dm755 saxon-xslt.sh /usr/bin/saxon-xslt
echo '🅸🅽🆂🆃🅰🅻🅻 saxon-xquery.sh'
sudo install -Dm755 saxon-xquery.sh /usr/bin/saxon-xquery
echo '🅻🅸🅽🅺 🆆🅸🆃🅷 🆂🅸🅼🅿🅻🅴🆁 🅽🅰🅼🅴 🅵🅾🆁 🅲🅾🅼🅿🅰🆃 🆆🅸🆃🅷 🅾🆃🅷🅴🆁🆂'
echo '🅳🅸🆁🅴🅲🆃 🅰🅲🅲🅴🆂🆂 saxon9he.jar'
sudo ln -s /usr/share/java/saxon/saxon9he.jar /usr/share/java/saxon/saxon.jar
echo '🅳🅸🆁🅴🅲🆃 🅰🅲🅲🅴🆂🆂 saxon-xslt'
sudo ln -s /usr/bin/saxon-xslt /usr/bin/saxon
echo '██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗
██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██║  ██║
██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██║  ██║
██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██████╔╝
╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═════╝ '

echo 'use it in command lines example "saxon -versionmsg"'
