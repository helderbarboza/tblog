defmodule TBlog.Repo.Migrations.CreateArticles do
  use Ecto.Migration

  def change do
    create table(:articles) do
      add :title, :string
      add :author, :string, null: true
      add :content, :string, size: 4000
      add :tags, {:array, :string}

      timestamps()
    end
  end
end
