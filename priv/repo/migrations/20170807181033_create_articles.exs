defmodule TirTairngire.Repo.Migrations.CreateArticles do
  use Ecto.Migration

  def change do
    create table(:articles, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :body, :string
      add :description, :string
      add :title, :string
      add :slug, :string
      add :inserted_at, :"datetimetz"
      add :updated_at, :"datetimetz"
    end

  end
end
