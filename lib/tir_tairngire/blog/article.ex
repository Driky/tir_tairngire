defmodule TirTairngire.Blog.Article do
  use Ecto.Schema
  import Ecto.Changeset
  alias TirTairngire.Blog.Article


  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "articles" do
    field :body, :string
    field :description, :string
    field :slug, :string
    field :title, :string
    field :inserted_at, Timex.Ecto.DateTimeWithTimezone
    field :updated_at, Timex.Ecto.DateTimeWithTimezone
  end

  @doc false
  def changeset(%Article{} = article, attrs) do
    article
    |> cast(attrs, [:body, :description, :title, :slug])
    |> validate_required([:body, :description, :title, :slug])
  end
end
