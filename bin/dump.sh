#!/usr/bin/env bash

# Run this command from the outside containers

SCRIPT_DIR="$(cd $(dirname "$0") || exit; pwd)"
DB_CONTAINER_SERVICE_NAME=db
DATA_FILE_NAME=4-testdata.sql
SCHEMA_FILE_NAME=2-schema.sql
OUTPUT_DIR_INSIDE_CONTAINER=/
OUTPUT_DIR=$SCRIPT_DIR/../database
DB_NAME=xxx
DB_USERNAME=xxx

# dump data-only SQL
echo '**********************************'
echo 'Dumping data only SQL...'
echo '**********************************'
docker-compose exec $DB_CONTAINER_SERVICE_NAME pg_dump -U $DB_USERNAME --data-only --file $OUTPUT_DIR_INSIDE_CONTAINER$DATA_FILE_NAME --inserts $DB_NAME
(docker-compose exec $DB_CONTAINER_SERVICE_NAME cat $OUTPUT_DIR_INSIDE_CONTAINER$DATA_FILE_NAME | sed "s/\r//g") > "$OUTPUT_DIR"/$DATA_FILE_NAME

# dump schema-only SQL
echo '**********************************'
echo 'Dumping schema only SQL...'
echo '**********************************'
docker-compose exec $DB_CONTAINER_SERVICE_NAME pg_dump -U $DB_USERNAME --schema-only --file $OUTPUT_DIR_INSIDE_CONTAINER$SCHEMA_FILE_NAME --inserts $DB_NAME
(docker-compose exec $DB_CONTAINER_SERVICE_NAME sed -e '1,17d' $OUTPUT_DIR_INSIDE_CONTAINER$SCHEMA_FILE_NAME | sed "s/\r//g") > "$OUTPUT_DIR"/$SCHEMA_FILE_NAME
