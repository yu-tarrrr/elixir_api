defmodule TodoDriver.FindDriverBehaviour do
    alias TodoDriver.Todos
    @callback fetch() :: {:ok, Todos.t() } | :not_found | {:error, reason :: term}
end

defmodule TodoDriver.FindDriver do
    alias TodoDriver.Todos
    require Logger

    @behaviour TodoDriver.FindDriverBehaviour
    def fetch() do
        {:ok, TodoDriver.Repo.all(Todos)
        |> Enum.map( fn todo -> %{id: todo.id, body: todo.body} end)}
    catch
        e ->
        Logger.error(inspect(e))
        {:error, e}
    end
end
