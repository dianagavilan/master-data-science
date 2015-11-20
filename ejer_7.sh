 #!/bin/sh
echo -n "Introduce fichero "
read X
csvsort -d '^' -r -c nb_engines  $X |head -2|csvcut -c model |tail -1 
