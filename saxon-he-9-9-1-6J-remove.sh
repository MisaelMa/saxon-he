#!/bin/bash

echo '███████╗ █████╗ ██╗  ██╗ ██████╗ ███╗   ██╗    ██╗  ██╗███████╗
██╔════╝██╔══██╗╚██╗██╔╝██╔═══██╗████╗  ██║    ██║  ██║██╔════╝
███████╗███████║ ╚███╔╝ ██║   ██║██╔██╗ ██║    ███████║█████╗
╚════██║██╔══██║ ██╔██╗ ██║   ██║██║╚██╗██║    ██╔══██║██╔══╝
███████║██║  ██║██╔╝ ██╗╚██████╔╝██║ ╚████║    ██║  ██║███████╗
╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═╝╚══════╝'

echo 'remove saxon9he.jar'
sudo rm /usr/share/java/saxon/saxon9he.jar
echo 'remove saxon-xslt.sh'
sudo rm /usr/bin/saxon-xslt
echo 'remove saxon-xquery.sh'
sudo rm /usr/bin/saxon-xquery
echo 'remove saxon.jar'
sudo rm /usr/share/java/saxon/saxon.jar
echo 'rm saxon bin'
sudo /usr/bin/saxon
echo 'saxon removido existosamente'
