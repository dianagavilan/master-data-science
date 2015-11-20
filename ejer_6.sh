 #!/bin/sh
csvsort -d '^' -r -c nb_engines optd_aircraft.csv |head -2 |tail -1 
csvgrep -d '^' -c manufacturer  -m Airbus optd_aircraft.csv > temporal.csv
## extraigo el mayor numero de motores de un airbus y lo guardo en una variable
x=$(csvgrep -d '^' -c manufacturer  -m Airbus optd_aircraft.csv |csvcut -c nb_engines |sort -r|uniq | head  -n+2 |tail -n+2)
csvgrep -d ',' -c nb_engines -m $x temporal.csv
 
