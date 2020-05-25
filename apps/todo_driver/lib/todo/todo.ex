defmodule TodoDriver.Todo do
use Ecto.Schema

  # weather is the DB table
  schema "todos" do
    field :id,    :integer
    field :body, :string
  end
end