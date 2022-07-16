# saxon-he

dependences
  ```sh
    wget

    sudo apt install unzip
    sudo pacman -S unzip
  ```

saxon install

  ```sh
    sudo  chmod a+x ./saxon-he.sh
    ./saxon-he.sh
  ```

saxon uninstall

  ```sh
    sudo chmod a+x ./uninstall.sh
     ./uninstall.sh
  ```

No source file name Saxon-HE 9.9.1.6J from Saxonica Usage:
see http://www.saxonica.com/documentation/index.html#!using-xsl/commandline
Format: net.sf.saxon.Transform options params Options available: -? -a -catalog -config -cr -diag -dtd -ea -expand
-explain -export -ext -im -init -it -jit -l -lib -license -m -nogo -now -o -opt -or -outval -p -quit -r -relocate
-repeat -s -sa -scmin -strip -t -T -target -TB -threads -TJ -Tlevel -Tout -TP -traceout -tree -u -val -versionmsg
-warnings -x -xi -xmlversion -xsd -xsdversion -xsiloc -xsl -y Use -XYZ:? for details of option XYZ Params:
param=value Set stylesheet string parameter +param=filename Set stylesheet document parameter ?param=expression Set
stylesheet parameter using XPath
!param=value Set serialization parameter
