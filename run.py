#!/usr/bin/env python
# encoding: utf-8

from app import app

# app.run(host = '127.0.0.1', port = 5000, debug = True)
app.run(host = '0.0.0.0', port = 8080)

