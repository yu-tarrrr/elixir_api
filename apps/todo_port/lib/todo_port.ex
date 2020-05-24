defmodule TodoPort do
  @callback fetch() :: {:ok, %{} } | :not_found | {:error, reason :: term}
end
