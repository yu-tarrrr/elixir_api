defmodule TodoDriver.Todos do
  use Ecto.Schema

  @primary_key false
  schema "todos" do
    field :id,   :integer
    field :body, :string
  end
end