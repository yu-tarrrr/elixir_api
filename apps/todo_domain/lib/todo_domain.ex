defmodule TodoDomain.TodoObject do
  defstruct [:id, :body]
  @type t :: %__MODULE__{}
end


defmodule TodoObject.TodoObjects do
  alias TodoDomain.TodoObject
  @type t:: [TodoObject.t()]
end