defmodule Educpop.Event do
  use Ecto.Schema
  import Ecto.Changeset


  schema "events" do
    field :address, :string
    field :city, :string
    field :country, :string
    field :description, :string
    field :end_at, :utc_datetime
    field :location, :string
    field :name, :string
    field :original_url, :string
    field :start_at, :utc_datetime
    field :zipcode, :integer

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:name, :start_at, :end_at, :description, :location, :address, :original_url])
    |> validate_required([:name, :start_at, :location])
    |> validate_length(:name, min: 3)
    |> validate_length(:location, min: 3)
  end
end
