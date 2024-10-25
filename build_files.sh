#!/bin/bash
# Exit immediately if a command exits with a non-zero status.
set -e

# Install project dependencies
pip3 install -r requirements.txt

# Collect static files
python3 manage.py collectstatic --noinput --clear

# Make migrations
python3 manage.py makemigrations

# Apply migrations
python3 manage.py migrate

