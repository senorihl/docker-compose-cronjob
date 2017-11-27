# docker-compose-cronjob
Sample project for illustrating a running cronjob in docker-compose context.

## Installation

Make sure you have docker running on your environment.

Then clone this repo 

```bash
git clone git@github.com:Senorihl/docker-compose-cronjob.git
```

## Running

Simple build image & run it with `docker-compose`

```bash
cd docker-compose-cronjob
docker-compose up -d --build
```

## Verifying the crontab is executing

Display the logs of the `mycron` container.

```bash
docker-compose logs -f -t mycron
```
