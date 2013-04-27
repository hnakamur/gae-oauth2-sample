#!/bin/bash
virtualenv -p /usr/local/bin/python --no-site-packages --distribute .
source bin/activate
pip install --upgrade -r pip_install
