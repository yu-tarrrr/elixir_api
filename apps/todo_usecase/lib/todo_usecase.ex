defmodule TodoUsecase.FindUsecaseBehaviour do
  @callback fetchTodos() ::
    {:ok, %{} }| :not_found | {:error, reason :: term}
  
end

defmodule TodoUsecase.FindUsecase do
  # @find_port Application.get_env(:application, :find_port)
  @behaviour TodoUsecase.FindUsecaseBehaviour

  @impl true
  def fetchTodos do
    case TodoGateway.FindGataway.fetch() do
      {:ok, result} -> result
      _ -> nil
    end
  end
end
