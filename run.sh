redis-server --daemonize yes

# Start Celery worker
celery -A django_celery worker --loglevel=info &

# Start Django development server
python manage.py runserver 0.0.0.0:8000