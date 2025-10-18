cat > README.md << 'EOF'
# formularic.com — MVP
## Setup rápido
1) Copia .env.example a .env y completa valores.
2) docker compose up -d --build
3) docker compose exec web python manage.py migrate
4) docker compose exec web python manage.py createsuperuser

## Comandos frecuentes
- Ejecutar servidor local: docker compose up web
- Correr tests: docker compose exec web pytest
EOF
