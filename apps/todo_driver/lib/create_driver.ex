defmodule TodoDriver.CreateDriverBehaviour do
    alias TodoDriver.Todos
    @callback create() :: {:ok} | {:error, reason :: term}
end