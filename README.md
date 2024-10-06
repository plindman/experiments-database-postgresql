# Postgres as service

## About Postgres and Docker

https://www.docker.com/blog/how-to-use-the-postgres-docker-official-image/

## Run as part of the experiments

``` bash
# Edit docker-compose.yml if you want but it has defaults for use in these experiments.
chmod +x run.sh # make sure the script is executable
./run.sh # Run the script to start the database
```

## Run locally

``` bash
docker compose -f docker-compose.yml up
```

## Acknowledgements

- [PostgreSQL](https://www.postgresql.org/) - a powerful, open source object-relational database system.
