 #!/bin/sh 
csvcut -d '^' -c manufacturer optd_aircraft.csv| sort |uniq |tail -n+2 |wc -l   
