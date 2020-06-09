defmodule TodoPort.FindPort do
  @callback fetchAll() :: {:ok, %{} } | :not_found | {:error, reason :: term}
end
