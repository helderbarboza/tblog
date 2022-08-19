FROM elixir:1.13

# prepare dir
RUN mkdir -p /app
WORKDIR /app

# install hex, rebar
RUN apt-get update && \
    apt-get install -y postgresql-client && \
    apt-get install -y inotify-tools && \
    mix local.hex --force && \
    mix local.rebar --force  && \
    mix archive.install --force hex phx_new 1.6.11

EXPOSE 4000

CMD ["mix", "do", "deps.get,", "phx.server"]
