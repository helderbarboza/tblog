defmodule TBlog.Blog.Article do
  use Ecto.Schema
  import Ecto.Changeset

  schema "articles" do
    field :author, :string
    field :content, :string
    field :tags, {:array, :string}
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [:title, :author, :content, :tags])
    |> validate_length(:tags, min: 2)
    |> validate_required([:title, :content, :tags])
  end
end
