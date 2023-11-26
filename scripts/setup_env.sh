#!/bin/bash

set -e

cp .env.example .env

while true; do
    echo "Setting up environment variables..."
    for (( i = 1 ; i < `cat .env | sed 's/#.*//g' | sed '/^$/d' | wc -l` ; i++ ));
    do
        EACH_ENV_KEY=$(cat .env | sed 's/#.*//g' | sed '/^$/d' | sed 's/^/export /' | head -$i | tail -1)
        EACH_ENV_VALUE=$(cat .env | sed 's/#.*//g' | sed '/^$/d' | head -$i | tail -1)
        $EACH_ENV
    done
    break
done

docker-compose up -d

WAIT_TILL_DB_IS_READY=`docker ps -q -f status=running -f name=${POSTGRES_DB}`

while true; do
    if [[ $WAIT_TILL_DB_IS_READY == "" ]]; then
        echo -n -e "Waiting for database to be ready...\n"
        sleep 2
    elif [[ $WAIT_TILL_DB_IS_READY == "$(docker ps -q -f status=running -f name=${POSTGRES_DB})" ]]; then
        echo "Configuring database..."
        bash scripts/import_database.sh sql/initial.sql
        sleep 2
        break
    fi
done

echo " Virtual environment set.
    Server is running on port ${BACKEND_SERVER_PORT}.
    PostgreSQL is running on port ${POSTGRES_PORT}.
    PGAdmin is running on port ${PGADMIN_PORT}.
    PGAdmin username: ${PGADMIN_DEFAULT_EMAIL}.
    PGAdmin password: ${PGADMIN_DEFAULT_PASSWORD}.

    To cleanup the environment, run: make cleanup
"