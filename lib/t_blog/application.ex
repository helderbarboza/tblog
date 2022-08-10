defmodule TBlog.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      TBlog.Repo,
      # Start the Telemetry supervisor
      TBlogWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: TBlog.PubSub},
      # Start the Endpoint (http/https)
      TBlogWeb.Endpoint
      # Start a worker by calling: TBlog.Worker.start_link(arg)
      # {TBlog.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TBlog.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TBlogWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
