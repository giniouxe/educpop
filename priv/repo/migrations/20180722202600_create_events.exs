defmodule Educpop.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :name, :string
      add :start_at, :utc_datetime
      add :end_at, :utc_datetime
      add :description, :text
      add :location, :string
      add :address, :string
      add :original_url, :string
      add :city, :string
      add :country, :string
      add :zipcode, :integer

      timestamps()
    end

  end
end
