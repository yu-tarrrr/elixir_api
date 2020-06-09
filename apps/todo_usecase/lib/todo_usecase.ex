defmodule TodoUsecase.FindUsecaseBehaviour do
  alias TodoDomain.TodoObjects
  @callback fetchAll() ::
    {:ok, TodoObjects.t }| :not_found | {:error, reason :: term}
  @callback fetchBy(integer()) ::
    {:ok, TodoObject.t }| :not_found | {:error, reason :: term}
  
end

defmodule TodoUsecase.FindUsecase do
  alias TodoGateway.FindGataway
  @behaviour TodoUsecase.FindUsecaseBehaviour

  @impl true
  def fetchAll do
    case FindGataway.fetchAll() do
      {:ok, result} -> 
        {:ok, result}
      {:error, reason} -> 
        {:error, reason}
    end
  end

  @impl true
  def fetchBy(id) do
    case FindGataway.fetchBy(id) do
      {:ok, result} -> 
        {:ok, result}
      {:error, reason} -> 
        {:error, reason}
    end
  end
end
