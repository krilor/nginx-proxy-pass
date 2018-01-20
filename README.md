# nginx-proxy-pass
Docker image for setting up a simple proxy for external resources on the backend.
Based on nginx:alpine.

## Quick start

`docker run -p 8080:80 krilor/nginx-proxy-pass`

localhost:8080 will then be a proxy for https://reqres.in/. Try visiting localhost:8080/api/users

## Usage
The only thing that is needed is to specify the host, with full URL, including HTTP/HTTPS.
Like so:

`docker run -p 8080:80 --env HOST=https://my.webpage.com krilor/nginx-proxy-pass`




