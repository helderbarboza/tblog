defmodule TBlogWeb.PageController do
  use TBlogWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
