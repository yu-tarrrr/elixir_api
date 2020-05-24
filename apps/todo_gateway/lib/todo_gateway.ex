defmodule TodoGateway.FindGataway do
  @behaviour TodoPort.FindPort

  def fetch() do
    IO.puts("********")
    {:ok, [%{id: 1, body: "todo1"}]}
  end
end
