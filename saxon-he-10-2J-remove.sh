#!/bin/bash

echo '███████╗ █████╗ ██╗  ██╗ ██████╗ ███╗   ██╗    ██╗  ██╗███████╗
██╔════╝██╔══██╗╚██╗██╔╝██╔═══██╗████╗  ██║    ██║  ██║██╔════╝
███████╗███████║ ╚███╔╝ ██║   ██║██╔██╗ ██║    ███████║█████╗
╚════██║██╔══██║ ██╔██╗ ██║   ██║██║╚██╗██║    ██╔══██║██╔══╝
███████║██║  ██║██╔╝ ██╗╚██████╔╝██║ ╚████║    ██║  ██║███████╗
╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═╝╚══════╝'

echo 'remove saxon-he-10.2.jar'
sudo rm /usr/share/java/saxon/saxon-he-10.2.jar

echo 'remove saxon-xslt.sh'
sudo rm /usr/bin/saxon-xslt
echo 'remove saxon-xquery.sh'
sudo rm /usr/bin/saxon-xquery
echo 'remove saxon.jar'
sudo rm /usr/share/java/saxon/saxon.jar
echo 'remove saxon bin'
sudo rm /usr/bin/saxon

echo 'saxon removido existosamente'
