defmodule TirTairngire.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :username, :string
      add :password, :string
      add :email, :string
      add :inserted_at, :"datetimetz"
      add :updated_at, :"datetimetz"
    end

    create unique_index(:users, [:username])
  end
end
