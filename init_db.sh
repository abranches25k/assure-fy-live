#!/usr/bin/env bash

# Este script agora apenas inicia o servidor Gunicorn (o db.create_all está no app.py)
gunicorn app:app