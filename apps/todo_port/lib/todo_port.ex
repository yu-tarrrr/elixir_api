defmodule TodoPort.FindPort do
  @callback fetch() :: {:ok, %{} } | :not_found | {:error, reason :: term}
end
