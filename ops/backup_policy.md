cat > ops/backup_policy.md << 'EOF'
# Política de backups
- Base de datos Postgres: snapshot diario, retención 14 días.
- Media (S3): versionado habilitado, lifecycle 90 días.
- Encriptación: KMS en reposo, TLS en tránsito.
- Pruebas de restauración: 1 vez/mes.
EOF
