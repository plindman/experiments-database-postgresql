#!/bin/bash

# Get the directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
COMPOSE_FILE="$SCRIPT_DIR/docker-compose.yml"

# Start Superset containers
echo "Starting Postgre containers..."
docker-compose -f $COMPOSE_FILE up -d

# Check if Superset started successfully
if [ $? -ne 0 ]; then
    echo "Failed to start experiments Postgre. Exiting."
    exit 1
fi

echo "Postgres container started successfully!"
echo "Postgres should be accessible at localhost:5432"
echo ""
echo "To connect to this Postgres, use one of these connection strings:"
echo "Using Docker network: postgresql://username:password@postgres:5432/dbname"
echo ""
# echo "For Mac/Windows: postgresql://username:password@host.docker.internal:5432/dbname"
# echo "For Linux: postgresql://username:password@172.17.0.1:5432/dbname (replace with your host IP)"
