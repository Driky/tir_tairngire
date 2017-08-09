defmodule TirTairngire.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias TirTairngire.Accounts.User


  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  @required_fields ~w(email username password)a
  # @optional_fields ~w(bio image)a
  # @timestamps_opts [type: Timex.Ecto.DateTimeWithTimezone,
  #                 autogenerate: {Timex.Ecto.DateTimeWithTimezone, :autogenerate, [:usec]}]
  schema "users" do
    field :email, :string
    field :password, :string
    field :username, :string
    field :inserted_at, Timex.Ecto.DateTimeWithTimezone
    field :updated_at, Timex.Ecto.DateTimeWithTimezone
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:username, :password, :email])
    |> validate_required([:username, :password, :email])
    |> unique_constraint(:username)
  end
end
