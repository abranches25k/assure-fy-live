#!/usr/bin/env bash

# 1. Roda o comando Python para criar as tabelas de forma básica e robusta
python -c 'from app import db; db.create_all()'

# 2. Inicia o servidor Gunicorn (este comando é o que fica rodando)
gunicorn app:app