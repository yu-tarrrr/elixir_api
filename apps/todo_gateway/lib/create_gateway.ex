defmodule TodoGateway.CreateGatewayBehaviour do
  @callback create(String.t()) :: {:ok} | {:error, reason :: term}
end

defmodule TodoGateway.CreateGateway do
    @behaviour TodoGateway.CreateGatewayBehaviour
    def create(body) do
        
    end
end