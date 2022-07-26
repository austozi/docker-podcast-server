# Podcast Server
A podcast server and feed generator based on yt-dlp, Podcats and Nginx, dockerised.

## What this is

I'm no coder and this is a hacky solution that I put together to solve a problem I had. I wanted a selfhosted media downloader and podcast feed generator because some of my favourite shows do not provide a podcast feed.

This application will:

- Download media files from the web using yt-dlp as save them as mp3 files on the server.
- Generate a podcast feed of the mp3 files using [Podcats](https://github.com/jakubroztocil/podcats).
- Serve the podcast feed and mp3 files using the Nginx web server (based on [linuxserver/nginx](https://hub.docker.io/r/linuxserver/nginx)).

## Building the image

1. Clone this repository using `git clone`.
2. Navigate to the root source folder and run `docker build .`.
3. Alternatively, execute the script `./build_push.sh`. This will build the image, tag it and push it to [Docker Hub](https://hub.docker.com).
