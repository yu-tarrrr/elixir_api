defmodule TodoDriver.FindDriverBehaviour do
    alias TodoDriver.Todos
    @callback fetchAll() :: {:ok, Todos.t() } | :not_found | {:error, reason :: term}
    @callback fetchBy(integer()) :: {:ok, Todos.t() } | :not_found | {:error, reason :: term}
end

defmodule TodoDriver.FindDriver do
    alias TodoDriver.Todos
    require Logger

    @behaviour TodoDriver.FindDriverBehaviour
    def fetchAll() do
        {:ok, TodoDriver.Repo.all(Todos)
        |> Enum.map( fn todo -> %{id: todo.id, body: todo.body} end)}
    catch
        e ->
        Logger.error(inspect(e))
        {:error, e}
    end

    def fetchBy(id) do
        {:ok, TodoDriver.Repo.get_by(Todos, id: id)}
    catch
        e ->
        Logger.error(inspect(e))
        {:error, e}
    end
    
    
end
