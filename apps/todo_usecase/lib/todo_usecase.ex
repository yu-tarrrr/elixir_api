defmodule TodoUsecase.FindUsecaseBehaviour do
  @callback fetchTodos() ::
    {:ok, %{} }| :not_found | {:error, reason :: term}
  
end

defmodule TodoUsecase.FindUsecase do
  @behaviour TodoUsecase.FindUsecaseBehaviour

  @impl true
  def fetchTodos do
    case TodoPort.FindPort.fetch() do
      {:ok, result} -> result
      _ -> nil
    end
  end
end
