# github-pages
Dockerfile for GitHub Pages / Jekyll

## Build the image

`docker build -t joowgir/github-pages .`

## Run the image

`docker run -v $PWD:/var/www -p 4000:4000 -it joowgir/github-pages` to serve the current working directory.
