#!/usr/bin/env bash
set -e

cp -n .env.example .env || true
docker compose up -d --build
sleep 5
docker compose exec web python manage.py migrate
docker compose exec web python manage.py collectstatic --noinput || true
echo "Listo. Accede en http://localhost:8000"
