#!/bin/bash

SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"admin@admin.com"}


cd /app/

python3 manage.py migrate --noinput
python3 manage.py shell <<EOF
import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'mynotes.settings')  # Replace 'your_project.settings' with your actual settings module

django.setup()

from django.contrib.auth.models import User

# Check if the superuser exists
if not User.objects.filter(username='admin').exists():
    User.objects.create_superuser(os.environ.get("DJANGO_SUPERUSER_NAME"),os.environ.get("DJANGO_SUPERUSER_EMAIL"),os.environ.get("DJANGO_SUPERUSER_PASSWORD"))
    print('Superuser created successfully!')
else:
    print('Superuser already exists.')
EOF