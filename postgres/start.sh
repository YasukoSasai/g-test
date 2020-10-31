#!/bin/sh

docker-compose up -d
echo "🐢 < Starting postgreSQL container..."
sleep 2
docker exec postgres_db_1 bash /tmp/volume/restore.sh
echo "🐰 < Running postgreSQL container with data added!"