# TBlog
## Overview

A blog application.

### Screenshots

<table>
  <tbody>
    <tr>
      <td>
        <img src="https://github.com/helderbarboza/tblog/assets/29435727/a259dc30-106e-464c-9a8e-87ef736e0650">
        <p align="center"><sup><em>List articles</em></sup></p>
      </td>
      <td>
        <img src="https://github.com/helderbarboza/tblog/assets/29435727/0d53f701-646e-4048-9fdf-0c0bcdf1a5c4">
        <p align="center"><sup><em>Edit article</em></sup></p>
      </td>
      <td>
        <img src="https://github.com/helderbarboza/tblog/assets/29435727/90bc16e2-f96a-45ed-a5b8-ff4b997c1a36">
        <p align="center"><sup><em>Show article</em></sup></p>
      </td>
    </tr>
  </tbody>
</table>

## Tech Stack

  - Docker
  - Docker compose
  - Elixir
  - Phoenix
  - Postgresql
  - Ecto
  - Bootstrap

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
