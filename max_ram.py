#!/usr/bin/env python

import sys
import time
import re

pattern = re.compile('\d+')
file_mem = open('/proc/meminfo', 'r')
# discard top line
file_mem.readline()
free_mem_unparsed = file_mem.readline()
match = pattern.search(free_mem_unparsed)
free_mem = (int)(match.group())

kilobyte = (0,) * (1024 / 8)
data = kilobyte * free_mem

while True:
                time.sleep(1)
