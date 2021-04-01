#!/bin/bash

flask db migrate
flask db upgrade
gunicorn -w 4 -b 127.0.0.1:5000 run:app