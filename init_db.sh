#!/usr/bin/env bash

# Este script executa o db.create_all() antes de iniciar o servidor Gunicorn

# 1. Roda o comando Python para criar as tabelas
python -c "from app import db, app; with app.app_context(): db.create_all()"

# 2. Inicia o servidor Gunicorn (este comando é o que fica rodando)
gunicorn app:app