 #!/bin/sh
cat  optd_airlines.csv |grep 'air-' | sort -t "^" -k14nr | head -1