defmodule Glup.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:user) do
      add :username, :string
      add :password, :string

      timestamps()
    end

    create unique_index("user", [:username])
  end
end
