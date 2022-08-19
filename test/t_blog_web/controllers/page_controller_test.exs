defmodule TBlogWeb.PageControllerTest do
  use TBlogWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "<h1>TBlog</h1>"
  end
end
