defmodule TodoUsecase.CreateUsecaseBehaviour do
    @callback create(String.t()) :: {:ok} | {:error, reason :: term}
end

defmodule TodoUsecase.CreateUsecase do
    @behaviour TodoUsecase.CreateUsecaseBehaviour
    alias TodoGateway.CreateGateway
    def create(body) do
        case CreateGateway.create(body) do
            {:ok} ->
                {:ok}
            {:error, :reason} -> 
                {:error, :reason}
        end
    end
    
end