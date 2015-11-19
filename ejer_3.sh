 #!/bin/sh 
csvcut -d '^' -c  manufacturer optd_aircraft.csv |sort |uniq -c |sort -n -r |head -10 