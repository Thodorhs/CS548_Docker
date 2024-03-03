# CS548_Docker
CS-548: Cloud-native Software Architectures Computer Science Department • University of Crete. Assignment 1: Docker

ex1:

ex2:
a)
b)
c) The changes made inside the running container are only persistent for the running container. When you stop and remove the container, any modifications made within the container are discarded.

ex3:
git clone --recursive https://github.com/chazapis/hy548.git
sudo apt-get install hugo
make
docker run -d -p 80:80 --name cs-548-nginx-container -v $(pwd)/html/public:/usr/share/nginx/html nginx:1.23.3
via browser : http://localhost

ex4:
a) 
Dockerfile found in this repo

b)
docker login
docker tag thodorisp/cs548-nginx-image:latest thodorisp/cs548-nginx-image:1.0
docker push thodorisp/cs548-nginx-image:1.0

c)
using the command docker images we get 
nginx                         1.23.3-alpine       2bc7edbc3cf2   12 months ago    40.7MB
thodorisp/cs548-nginx-image   1.0                 fc19c194e23c   56 minutes ago   47.5MB
so our image is 6.8MB larger

d)
To keep the image as small as possible, the Dockerfile has taken advantage of the Alpine Linux variant of the Nginx image (nginx:1.23.3-alpine).
