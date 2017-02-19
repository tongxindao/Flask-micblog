#! /usr/bin/env python
import os
import sys

pybabel = 'pybabel'
os.system(pybabel + ' compile -d app/translations')
