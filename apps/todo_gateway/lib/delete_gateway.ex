defmodule TodoGateway.DeleteGatewayBehaviour do
    @callback deleteBy(integer()) :: {:ok, nil} | :not_found | {:error, reason :: term}
end

defmodule TodoGateway.DeleteGateway do
    @behaviour TodoGateway.DeleteGateway
    alias TodoDriver.DeleteDriver
    def deleteBy(id) do
        case DeleteDriver.deleteBy(id) do
            {:ok, _} ->
                {:ok, nil}
            {_} -> 
                {:error, nil}
        end
    end
end