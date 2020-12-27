# Run a nginx, a mysql, and a httpd (apache) server
# Run all of them --detach (or -d), name them with --name
# nginx should listen on 80:80, httpd on 8080:80, mysql on 3306:3306
# When running mysql, use the --env option (or -e) to pass in MYSQL_RANDOM_ROOT_PASSWORD=yes
docker container run --publish 80:80 --detach --name my-nginx nginx
docker container run --publish 8080:80 --detach --name my-httpd httpd
docker container run --publish 3306:3306 --detach --name mysql --env MYSQL_RANDOM_ROOT_PASSWORD=yes mysql

# Use docker container ls to ensure everything is correct before and after cleanup
docker container ls -a

# Use docker container logs on mysql to find the random password it created on startup
docker container logs my-mysql

# Clean it all up with docker container stop and docker container rm (both can accepts multiple names or ID's)
docker container stop my-nginx my-httpd my-mysql
docker container rm my-nginx my-httpd my-mysql

# Use docker container ls to ensure everything is correct before and after cleanup
docker container ls -a