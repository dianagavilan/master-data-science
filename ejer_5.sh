 #!/bin/sh
csvgrep -d '^' -c manufacturer -m  Airbus optd_aircraft.csv| tail -n+2 
