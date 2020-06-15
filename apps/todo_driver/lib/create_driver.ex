defmodule TodoDriver.CreateDriverBehaviour do
    @callback create(String.t()) :: {:ok} | {:error, reason :: term}
end

defmodule TodoDriver.CreateDriver do
    @behaviour TodoDriver.CreateDriverBehaviour
    alias TodoDriver.Todos
    require Logger

    def create(body) do
        TodoDriver.Repo.insert(%Todos{body: body})
    catch
        e ->
        Logger.error(inspect(e))
        {:error, e}
    end
end