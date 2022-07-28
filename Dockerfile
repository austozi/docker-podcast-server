FROM ghcr.io/linuxserver/nginx:latest

LABEL maintainer=austozi

ENV BASE_URL=localhost
ENV PODCAST_TITLE=Podcasts
ENV PODCAST_LINK=http://localhost:5000
ENV PODCAST_DESCRIPTION='Create your own podcast from MP3 files. Powered by Podcats.'
ENV PODCAST_IMAGE=http://localhost:5000/icon.png
ENV PODCAST_UPDATE_INTERVAL=12h

# Install base packages.
RUN apk add --no-cache ffmpeg gcc g++ libc-dev python3-dev

# Install latest pip.
RUN python3 -m ensurepip
RUN python3 -m pip install -U pip
RUN python3 -m pip install -U wheel
RUN python3 -m pip install -U yt-dlp podcats

COPY ./root/ /

RUN chmod +x /usr/local/bin/refresh

RUN mkdir -p /config/www
WORKDIR /config/www

# Expose HTTP port.
EXPOSE 80
