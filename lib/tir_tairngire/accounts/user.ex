defmodule TirTairngire.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias TirTairngire.Accounts.User


  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  @timestamps_opts [type: Timex.Ecto.DateTime,
                  autogenerate: {Timex.Ecto.DateTime, :autogenerate, [:usec]}]
  schema "users" do
    field :email, :string
    field :password, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:username, :password, :email])
    |> validate_required([:username, :password, :email])
    |> unique_constraint(:username)
  end
end
