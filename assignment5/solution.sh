# Create a `postgres` container with named volume psql-data using version `9.6.1`
docker container run --rm --name my-postgres -e POSTGRES_PASSWORD=mysecretpassword -v my-postgres-volume:/var/lib/postgresql/data postgres:9.6.1

# Create a new `postgres` container with same named volume using `9.6.2`
docker container run --rm --name my-postgres -e POSTGRES_PASSWORD=mysecretpassword -v my-postgres-volume:/var/lib/postgresql/data postgres:9.6.2
