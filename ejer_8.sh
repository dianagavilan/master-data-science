 #!/bin/sh
echo -n "Introduce fichero "
read X
echo -n "Introduce el fabricante "
read Y
csvgrep -d '^' -c manufacturer -m $Y $X |csvsort -r -c nb_engines |head -2|csvcut -c model |tail -1 