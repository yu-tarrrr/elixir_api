defmodule TodoUsecase.DeleteUsecaseBehaviour do
    @callback deleteBy(integer()) :: {:ok, nil}
end

defmodule TodoUsecase.DeleteUsecase do
    @behaviour TodoUsecase.DeleteUsecaseBehaviour

    def deleteBy(id) do
        {:ok, id}
    end
end