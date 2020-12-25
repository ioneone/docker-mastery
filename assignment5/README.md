# Assignment: Named Volumes

- Database upgrade with containers
- Create a `postgres` container with named volume psql-data using version `9.6.1`
- Use Docker Hub to learn `VOLUME` path and versions needed to run it
- Check logs, stop container
- Create a new `postgres` container with same named volume using `9.6.2`
- Check logs to validate
- (this only works with patch versions, most SQL DB's require manual commands to ugrade DB's to major/minor versions, i.e. it's a DB limitation not a container one)
