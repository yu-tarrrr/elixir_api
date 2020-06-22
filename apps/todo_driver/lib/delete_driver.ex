defmodule TodoDriver.DeleteDriverBehaviour do
    @callback deleteBy(integer()) :: {:ok} 
end

defmodule TodoDriver.DeleteDriver do
    @behaviour TodoDriver.DeleteDriverBehaviour
    alias TodoDriver.Todos
    require Logger

    def deleteBy(id) do
        IO.inspect("*********")
        TodoDriver.Repo.delete_all(%Todos{id: id})
    catch
        e ->
        Logger.error(inspect(e))
        {:error, e}
    end
end