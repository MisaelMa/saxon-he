
#!/bin/bash
echo '🅦🅔🅛🅒🅞🅜🅔 🅣🅞 🅣🅗🅔 🅢🅐🅧🅞🅝 🅘🅝🅢🅣🅐🅛🅛🅐🅣🅘🅞🅝 🅜🅐🅝🅐🅖🅔🅡'
echo ""
options=(
"12"
"11"
"10"
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

sudo rm -fr /usr/share/java/saxon/${pkgver}

echo 'remove saxon query.sh'
sudo rm -f /usr/bin/query

echo 'remove saxon tranform.sh'
sudo rm -f /usr/bin/transform

echo 'rm saxon bin'
sudo rm -f /usr/bin/saxon

echo 'saxon removido existosamente'
