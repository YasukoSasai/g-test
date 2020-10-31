
#!/bin/sh

echo "🐢 < Start dumping..."
docker exec postgres_db_1 bash /tmp/volume/dump.sh
echo "🐰 < finish dumping..."