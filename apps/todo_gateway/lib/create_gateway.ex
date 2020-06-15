defmodule TodoGateway.CreateGatewayBehaviour do
  @callback create(String.t()) :: {:ok} | {:error, reason :: term}
end

defmodule TodoGateway.CreateGateway do
  @behaviour TodoGateway.CreateGatewayBehaviour
  alias TodoDriver.CreateDriver
  def create(body) do
    case CreateDriver.create(body) do
      {:ok, _} -> 
        {:ok}
      {:error, reason} -> 
        {:error, reason}
    end
  end
end