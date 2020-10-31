#!/bin/sh

echo "start dump"
pg_dump testdb -U admin > /tmp/volume/db.sql
echo "finish dump"
