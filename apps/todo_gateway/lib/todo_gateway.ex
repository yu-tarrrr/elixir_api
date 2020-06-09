defmodule TodoGateway.FindGatewayBehaviour do
  @callback fetchAll() :: {:ok, TodoDomain.TodoObjects.t()} | :not_found | {:error, reason :: term}
  @callback fetchBy(integer()) :: {:ok, TodoDomain.TodoObject.t()} | :not_found | {:error, reason :: term}
end

defmodule TodoGateway.FindGataway do
  @behaviour TodoGateway.FindGatewayBehaviour
  alias TodoDriver.FindDriver
  alias TodoDomain.TodoObject

  def fetchAll() do
    case FindDriver.fetchAll() do
      {:ok, results} ->
        {:ok, 
        results
        |> Enum.map(fn result ->
          %TodoObject{id: result.id, body: result.body}
        end)}
      {:error, reason} -> 
        {:error, reason}
    end
  end

  def fetchBy(id) do
    case FindDriver.fetchBy(id) do
      {:ok, result} ->
        {:ok, %TodoObject{id: result.id, body: result.body}}
      {:error, reason} -> 
        {:error, reason}
    end
  end
end

