defmodule TodoGateway.FindGatewayBehaviour do
  @callback fetch() :: {:ok, TodoDomain.TodoObjects.t()} | :not_found | {:error, reason :: term}
end

defmodule TodoGateway.FindGataway do
  @behaviour TodoGateway.FindGatewayBehaviour
  alias TodoDriver.FindDriver
  alias TodoDomain.TodoObject

  def fetch() do
    case FindDriver.fetch() do
      {:ok, results} ->
                
        {:ok, 
        results
        |> Enum.map(fn result ->
          %TodoObject{id: result.id, body: result.body}
        end)}
      {:error, reason} -> 
        {:error,reason}
    end
  end
end

