# Practica Oracle SQL con Docker

Este entorno permite practicar Oracle SQL sin instalar Oracle XE directamente en Windows.
Usa Docker para levantar una base local y conectarte con SQL Developer.

## Requisitos

- Docker Desktop instalado y en ejecucion.
- SQL Developer (opcional, recomendado para practicar).

## Archivos de esta carpeta

- `docker-compose.yml`: servicio Oracle XE.
- `.env.example`: variables de entorno de ejemplo.
- `init/`: scripts `.sql` opcionales que se ejecutan al iniciar el contenedor por primera vez.
- `../services/docker-start.bat` y `../services/docker-stop.bat`: atajos para iniciar/detener en Windows.

## Paso a paso

1. Crear tu archivo `.env` a partir del ejemplo:

   PowerShell:

   ```powershell
   Copy-Item .env.example .env
   ```

2. Editar `.env` y cambiar passwords.

3. Levantar Oracle XE:

   ```powershell
   docker compose up -d
   ```

4. Verificar estado:

   ```powershell
   docker compose ps
   docker compose logs -f oracle-xe
   ```

5. Parar el entorno cuando no lo uses:

   ```powershell
   docker compose down
   ```

## Datos de conexion para SQL Developer

- Host: `localhost`
- Puerto: `1521` (o el valor `ORACLE_PORT` en `.env`)
- Service name: `XEPDB1`
- Usuario: valor de `ORACLE_APP_USER`
- Password: valor de `ORACLE_APP_PASSWORD`

Usuario admin (si lo necesitas):

- Usuario: `system`
- Password: valor de `ORACLE_SYS_PASSWORD`

## Scripts de inicializacion (`init/`)

Si agregas archivos `.sql` en `init/`, Oracle los ejecuta solo en la primera inicializacion del volumen de datos.

Si ya habias levantado el contenedor y quieres re-ejecutar inicializacion desde cero:

```powershell
docker compose down -v
docker compose up -d
```

## Nota sobre version del libro (11g)

El libro usa ejemplos en 11g, pero para practica de SQL basico y gran parte de DML/DDL, Oracle XE 21c funciona bien.
Si necesitas compatibilidad estricta con 11g, habria que montar otra imagen/version especifica.
