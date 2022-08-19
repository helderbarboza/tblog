defmodule TBlog.BlogTest do
  use TBlog.DataCase

  alias TBlog.Blog

  describe "articles" do
    alias TBlog.Blog.Article

    import TBlog.BlogFixtures

    @invalid_attrs %{author: nil, content: nil, tags: nil, title: nil}

    test "list_articles/0 returns all articles" do
      article = article_fixture()
      assert Blog.list_articles() == [article]
    end

    test "get_article!/1 returns the article with given id" do
      article = article_fixture()
      assert Blog.get_article_by_slug!(article.slug) == article
    end

    test "create_article/1 with valid data creates a article" do
      valid_attrs = %{
        author: "some author",
        content: "some content",
        tags: ["music", "travel"],
        title: "some title"
      }

      assert {:ok, %Article{} = article} = Blog.create_article(valid_attrs)
      assert article.author == "some author"
      assert article.content == "some content"
      assert article.tags == ["music", "travel"]
      assert article.title == "some title"
    end

    test "create_article/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Blog.create_article(@invalid_attrs)
    end

    test "update_article/2 with valid data updates the article" do
      article = article_fixture()

      update_attrs = %{
        author: "some updated author",
        content: "some updated content",
        tags: ["games", "food"],
        title: "some updated title"
      }

      assert {:ok, %Article{} = article} = Blog.update_article(article, update_attrs)
      assert article.author == "some updated author"
      assert article.content == "some updated content"
      assert article.tags == ["games", "food"]
      assert article.title == "some updated title"
    end

    test "update_article/2 with invalid data returns error changeset" do
      article = article_fixture()
      assert {:error, %Ecto.Changeset{}} = Blog.update_article(article, @invalid_attrs)
      assert article == Blog.get_article_by_slug!(article.slug)
    end

    test "delete_article/1 deletes the article" do
      article = article_fixture()
      assert {:ok, %Article{}} = Blog.delete_article(article)
      assert_raise Ecto.NoResultsError, fn -> Blog.get_article_by_slug!(article.slug) end
    end

    test "change_article/1 returns a article changeset" do
      article = article_fixture()
      assert %Ecto.Changeset{} = Blog.change_article(article)
    end
  end
end
