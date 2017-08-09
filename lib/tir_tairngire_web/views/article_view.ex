defmodule TirTairngireWeb.ArticleView do
  use TirTairngireWeb, :view
  alias TirTairngireWeb.ArticleView

  def render("index.json", %{articles: articles}) do
    %{data: render_many(articles, ArticleView, "article.json")}
  end

  def render("show.json", %{article: article}) do
    %{data: render_one(article, ArticleView, "article.json")}
  end

  def render("article.json", %{article: article}) do
    %{id: article.id,
      body: article.body,
      description: article.description,
      title: article.title,
      slug: article.slug}
  end
end
