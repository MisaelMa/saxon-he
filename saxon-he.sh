
#!/bin/bash
echo '🅦🅔🅛🅒🅞🅜🅔 🅣🅞 🅣🅗🅔 🅢🅐🅧🅞🅝 🅘🅝🅢🅣🅐🅛🅛🅐🅣🅘🅞🅝 🅜🅐🅝🅐🅖🅔🅡'
echo ""
options=(
"12"
"11"
"10"
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
url="https://github.com/Saxonica/Saxon-HE"
namefile="SaxonHE${_pkgver}J.zip"
downloadlink="${url}/raw/refs/heads/main/${major}/Java/${namefile}"

echo '🅳🅾🆆🅽🅻🅾🅰🅳🅸🅽🅶'
wget ${downloadlink}

echo '🅳🅴🅲🅾🅼🅿🆁🅴🆂🆂🅸🅽🅶'
sudo unzip ${namefile} -d saxon

echo '🅲🆁🅴🅰🆃🅸🅽🅶 🅵🅸🅻🅴 query.sh for Query'
echo "#!/bin/sh

java -cp /usr/share/java/saxon/${pkgver}/saxon-he-${pkgver}.jar net.sf.saxon.Query   "'"$@"'"
" >query.sh

echo '🅲🆁🅴🅰🆃🅸🅽🅶 🅵🅸🅻🅴 transform.sh for Transform'
echo "#!/bin/sh

java -cp /usr/share/java/saxon/${pkgver}/saxon-he-${pkgver}.jar net.sf.saxon.Transform "'"$@"'"
" >transform.sh

echo "🅸🅽🆂🆃🅰🅻🅻 saxon-he"
sudo mkdir /usr/share/java/saxon
sudo cp -r saxon /usr/share/java/saxon/${pkgver}

echo '🅸🅽🆂🆃🅰🅻🅻 transform.sh'
sudo install -Dm755 transform.sh /usr/bin/transform

echo '🅸🅽🆂🆃🅰🅻🅻 query.sh'
sudo install -Dm755 query.sh /usr/bin/query

echo '🅻🅸🅽🅺 🆆🅸🆃🅷 🆂🅸🅼🅿🅻🅴🆁 🅽🅰🅼🅴 🅵🅾🆁 🅲🅾🅼🅿🅰🆃 🆆🅸🆃🅷 🅾🆃🅷🅴🆁🆂'

echo '🅳🅸🆁🅴🅲🆃 🅰🅲🅲🅴🆂🆂 saxon'
sudo rm -f /usr/bin/saxon
sudo ln -s /usr/bin/transform /usr/bin/saxon

echo '██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗
██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██║  ██║
██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██║  ██║
██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██████╔╝
╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═════╝ '

echo 'use it in command lines example "saxon -versionmsg"'
