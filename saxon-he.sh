
#!/bin/bash
echo '🅦🅔🅛🅒🅞🅜🅔 🅣🅞 🅣🅗🅔 🅢🅐🅧🅞🅝 🅘🅝🅢🅣🅐🅛🅛🅐🅣🅘🅞🅝 🅜🅐🅝🅐🅖🅔🅡'
echo ""
options=(
"11"
"10"
"9.9"
)
PS3="select the version of saxon-he to install: "
select major in "${options[@]}"
do test -n "$major" && break; 
    echo ">>> Invalid Selection"; 
done
echo "all available versions of : $major"
value=$(<"$major".txt)
PS3="Please enter your choice: "
select minor in $value
do test -n "$minor" && break; 
echo ">>> Invalid Selection"; 
done
pkgver=${minor}
_pkgver=${pkgver//./-}
pkgdesc="XSLT 2.0 / XPath 2.0 and 3.0 / XQuery 1.0 and 3.0 processor for Java - Home Edition"
url="http://saxon.sourceforge.net"
namefile="SaxonHE${_pkgver}J.zip"
downloadlink="https://downloads.sourceforge.net/saxon/${namefile}"

echo '🅳🅾🆆🅽🅻🅾🅰🅳🅸🅽🅶'
wget ${downloadlink}

echo '🅳🅴🅲🅾🅼🅿🆁🅴🆂🆂🅸🅽🅶'
sudo unzip ${namefile}

echo '🅲🆁🅴🅰🆃🅸🅽🅶 🅵🅸🅻🅴 saxon-xquery.sh for Query'
echo "#!/bin/sh

java -cp /usr/share/java/saxon/saxon-he-${pkgver}.jar net.sf.saxon.Query   "'"$@"'"
" >saxon-xquery.sh

echo '🅲🆁🅴🅰🆃🅸🅽🅶 🅵🅸🅻🅴 saxon-xslt.sh for Transform'
echo "#!/bin/sh

java -cp /usr/share/java/saxon/saxon-he-${pkgver}.jar net.sf.saxon.Transform "'"$@"'"
" >saxon-xslt.sh

echo "🅸🅽🆂🆃🅰🅻🅻 saxon-he-${pkgver}.jar"
sudo install -Dm644 saxon-he-${pkgver}.jar /usr/share/java/saxon/saxon-he-${pkgver}.jar

echo '🅸🅽🆂🆃🅰🅻🅻 saxon-xslt.sh'
sudo install -Dm755 saxon-xslt.sh /usr/bin/saxon-xslt
echo '🅸🅽🆂🆃🅰🅻🅻 saxon-xquery.sh'
sudo install -Dm755 saxon-xquery.sh /usr/bin/saxon-xquery

echo '🅻🅸🅽🅺 🆆🅸🆃🅷 🆂🅸🅼🅿🅻🅴🆁 🅽🅰🅼🅴 🅵🅾🆁 🅲🅾🅼🅿🅰🆃 🆆🅸🆃🅷 🅾🆃🅷🅴🆁🆂'
echo "🅳🅸🆁🅴🅲🆃 🅰🅲🅲🅴🆂🆂 saxon-he-${pkgver}.jar"
sudo ln -s /usr/share/java/saxon/saxon-he-${pkgver}.jar /usr/share/java/saxon/saxon.jar

echo '🅳🅸🆁🅴🅲🆃 🅰🅲🅲🅴🆂🆂 saxon-xslt'
sudo ln -s /usr/bin/saxon-xslt /usr/bin/saxon

echo '██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗
██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██║  ██║
██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██║  ██║
██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██████╔╝
╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═════╝ '

echo 'use it in command lines example "saxon -versionmsg"'
