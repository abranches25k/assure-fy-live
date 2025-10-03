#!/usr/bin/env bash

# 1. Roda o comando Python para criar as tabelas. 
# O código no app.py está configurado para criar o arquivo em /tmp/saas.db
python -c "from app import db, app; with app.app_context(): db.create_all()"

# 2. Inicia o servidor Gunicorn (este comando é o que fica rodando)
gunicorn app:app