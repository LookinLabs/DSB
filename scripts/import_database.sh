#!/bin/bash

# PostgreSQL import an sql file
# Usage: ./import_database.sh <sql_file>
export PGPASSWORD="${POSTGRES_PASSWORD}"
SQL_FILE="$1"
psql -q -h localhost \
    --port "$POSTGRES_PORT" \
    -d "$POSTGRES_DB" \
    -U "$POSTGRES_USER" \
    -c "SET client_min_messages TO WARNING;" \
    -f $SQL_FILE
unset PGPASSWORD