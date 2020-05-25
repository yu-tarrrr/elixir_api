defmodule TodoDriver.Todo do
  use Ecto.Schema

  schema "todos" do
    # field :id,    :integer
    field :body, :string
  end
end