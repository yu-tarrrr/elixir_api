defmodule TodoGateway.FindGatewayBehaviour do
  @callback fetch() :: {:ok, %{} } | :not_found | {:error, reason :: term}
end

defmodule TodoGateway.FindGataway do
  @behaviour TodoGateway.FindGatewayBehaviour

  def fetch() do
    {:ok, TodoDriver.FindDriver.fetch() } 
  end
end
