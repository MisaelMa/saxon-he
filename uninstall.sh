
#!/bin/bash
echo '🅦🅔🅛🅒🅞🅜🅔 🅣🅞 🅣🅗🅔 🅢🅐🅧🅞🅝 🅘🅝🅢🅣🅐🅛🅛🅐🅣🅘🅞🅝 🅜🅐🅝🅐🅖🅔🅡'
echo ""
options=(
"11"
"10"
"9.9"
)
PS3="select the version of saxon-he to uninstall: "
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


echo '███████╗ █████╗ ██╗  ██╗ ██████╗ ███╗   ██╗    ██╗  ██╗███████╗
██╔════╝██╔══██╗╚██╗██╔╝██╔═══██╗████╗  ██║    ██║  ██║██╔════╝
███████╗███████║ ╚███╔╝ ██║   ██║██╔██╗ ██║    ███████║█████╗
╚════██║██╔══██║ ██╔██╗ ██║   ██║██║╚██╗██║    ██╔══██║██╔══╝
███████║██║  ██║██╔╝ ██╗╚██████╔╝██║ ╚████║    ██║  ██║███████╗
╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═╝╚══════╝'

echo "remove saxon-he-${pkgver}.jar"
sudo rm /usr/share/java/saxon/saxon-he-${pkgver}.jar
echo 'remove saxon-xslt.sh'
sudo rm /usr/bin/saxon-xslt
echo 'remove saxon-xquery.sh'
sudo rm /usr/bin/saxon-xquery
echo 'remove saxon.jar'
sudo rm /usr/share/java/saxon/saxon.jar
echo 'rm saxon bin'
sudo /usr/bin/saxon
echo 'saxon removido existosamente'
