#!/bin/bash
APP_PORT=${PORT:-8000}
cd /app/
chmod +x /app/staticfiles.sh
chmod +x /app/migrate.sh
/app/staticfiles.sh 
/app/migrate.sh
gunicorn --worker-tmp-dir /dev/shm mynotes.wsgi:application --bind "0.0.0.0:${APP_PORT}"