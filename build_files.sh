#!/bin/bash
# Exit immediately if a command exits with a non-zero status.
set -e

# Install project dependencies
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput --clear

# Make migrations
python manage.py makemigrations

# Apply migrations
python manage.py migrate

