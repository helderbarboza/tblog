defmodule TBlog.Repo.Migrations.AddSlugFieldToArticlesTable do
  use Ecto.Migration

  def change do
    alter table("articles") do
      add :slug, :string
    end
  end
end
