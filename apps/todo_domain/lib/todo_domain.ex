defmodule TodoDomain.TodoObject do
  defstruct [:id, :body]
  @type t :: %__MODULE__{}

  def isNil(id) do id == nil end
end


defmodule TodoObject.TodoObjects do
  alias TodoDomain.TodoObject
  @type t:: [TodoObject.t()]
end