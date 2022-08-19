# TBlog
## Overview

A blog application.

## Tech Stack

  - Docker
  - Docker compose
  - Elixir
  - Phoenix
  - Postgresql
  - Ecto
  - Bootstrap

Also some important packages:

  - [credo](https://hexdocs.pm/credo) for static code analysis
  - [excoveralls](https://hexdocs.pm/excoveralls) for test coverage reports

## Prerequisites

To run this application you must have these resources installed:

- [Docker](https://docs.docker.com/engine/install/ubuntu/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Development with Docker


```bash
# Docker compose setup
$ docker-compose up --build -d

# Setup the database
$ docker-compose exec web mix ecto.setup

# Run the server
$ docker-compose exec web mix phx.server
```

The project will be available at [localhost:4000](localhost:4000).

### Testing with Docker

```bash
# Docker compose setup
$ docker-compose up --build -d

# Setup the database
$ docker-compose exec web MIX_ENV=test mix ecto.reset

# Run the tests
$ docker-compose exec web mix test
```

### Development using Visual Studio Code Remote - Container

For better convenience, this repository also has [Remote - Container](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) config files. 

Simply execute the command **Remote-Containers: Reopen in container** on your VSCode.
