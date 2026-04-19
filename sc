#!/bin/bash

# Crear .env vacío si no existe
touch .env

# Asegurar que .env esté en .gitignore
grep -qxF ".env" .gitignore 2>/dev/null || echo ".env" >> .gitignore

echo "✅ .env creado y protegido en .gitignore"
