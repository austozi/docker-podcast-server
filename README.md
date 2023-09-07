**This repo is no longer maintained. I have replaced this with [Poddie](https://github.com/austozi/poddie) for my own use.**

# Podcast Server

I am no coder and this is a hacky solution that I put together to solve a problem I had. I wanted a selfhosted media downloader and podcast feed generator because some of my favourite shows did not provide a podcast feed.

This application will:

- Download media files from the web using [yt-dlp](https://github.com/yt-dlp/yt-dlp) as save them as MP3 files on the server. Thus, it supports any media site that yt-dlp supports.
- Generate a podcast feed of the MP3 files using [Podcats](https://github.com/jakubroztocil/podcats).
- Serve the podcast feed and MP3 files using the Nginx web server (based on [linuxserver/nginx](https://hub.docker.com/r/linuxserver/nginx)).

## Build the image

1. Clone this repository using `git clone`, or download the latest release.
2. Navigate to the root source folder and run `docker build .`.

## Deploy the container

See [installation instructions](https://github.com/austozi/selfhosted/tree/main/podcast-server).
