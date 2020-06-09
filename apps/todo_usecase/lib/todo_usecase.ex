defmodule TodoUsecase.FindUsecaseBehaviour do
  alias TodoDomain.TodoObjects
  @callback fetchTodos() ::
    {:ok, TodoObjects.t }| :not_found | {:error, reason :: term}
  
end

defmodule TodoUsecase.FindUsecase do
  # @find_port Application.get_env(:application, :find_port)
  @behaviour TodoUsecase.FindUsecaseBehaviour

  @impl true
  def fetchTodos do
    case TodoGateway.FindGataway.fetch() do
      {:ok, result} -> 
        {:ok, result}
      {:error, reason} -> 
        {:error, reason}
    end
  end
end
