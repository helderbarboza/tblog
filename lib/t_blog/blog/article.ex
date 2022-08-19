defmodule TBlog.Blog.Article do
  @moduledoc "Article schema."

  use Ecto.Schema
  import Ecto.Changeset
  import Slugy

  @derive {Phoenix.Param, key: :slug}

  schema "articles" do
    field :author, :string
    field :content, :string
    field :tags, {:array, :string}
    field :title, :string
    field :slug, :string

    timestamps()
  end

  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [:title, :author, :content, :tags, :slug])
    |> validate_length(:tags, min: 2)
    |> validate_required([:title, :content, :tags])
    |> unique_constraint(:slug)
    |> slugify(:title)
  end
end
