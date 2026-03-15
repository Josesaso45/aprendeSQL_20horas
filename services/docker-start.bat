@echo off
cd /d "%~dp0..\practica_oracle_sql"
docker compose up -d
docker compose ps
pause
