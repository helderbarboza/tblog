defmodule TBlog.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TBlog.Blog` context.
  """

  @doc """
  Generate a article.
  """
  def article_fixture(attrs \\ %{}) do
    {:ok, article} =
      attrs
      |> Enum.into(%{
        author: "some author",
        content: "some content",
        tags: [],
        title: "some title"
      })
      |> TBlog.Blog.create_article()

    article
  end
end
