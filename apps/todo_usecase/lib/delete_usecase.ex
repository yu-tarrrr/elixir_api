defmodule TodoUsecase.DeleteUsecaseBehaviour do
    @callback deleteBy(integer()) :: {:ok, nil}
end

defmodule TodoUsecase.DeleteUsecase do
    @behaviour TodoUsecase.DeleteUsecaseBehaviour
    alias TodoGateway.DeleteGateway

    def deleteBy(id) do
        DeleteGateway.deleteBy(id)
    end
end