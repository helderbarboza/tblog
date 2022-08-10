defmodule TBlog.Repo do
  use Ecto.Repo,
    otp_app: :t_blog,
    adapter: Ecto.Adapters.Postgres
end
