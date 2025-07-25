#!/bin/bash

(crontab -l 2> /dev/null; echo "*/2 * * * * /bin/bash -c 'echo -n crontab says hello--- ;date' >> ~/crondemo.log") | crontab -
