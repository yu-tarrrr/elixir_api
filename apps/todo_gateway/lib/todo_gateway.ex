defmodule TodoGateway do
  @behaviour TodoPort.FindPort

  def fetch() do
    IO.puts("********")
  end
end
