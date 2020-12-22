# Assignment: DNS Round Robin Test

- We can have multiple containers on a created network respond to the same DNS address
- Create a new virtual network (default bridge driver)
- Create two containers from elasticsearch:2 image
- Research and use --network-alias search when creating them to give them an additional DNS name to respond to
- Run alpline nslookup search with --net to see the two containers list for the same DNS name
- Run centos curl -s search:9200 with --net multiple times until you see both "name" fields show
