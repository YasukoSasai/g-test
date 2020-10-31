#!/bin/sh

echo "start restore"
createdb testdb -U admin
psql testdb -U admin < /tmp/volume/db.sql
echo "finish restore"
