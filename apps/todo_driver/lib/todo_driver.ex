defmodule TodoDriver.FindDriverBehaviour do
    @callback fetch() :: {:ok, %{} } | :not_found | {:error, reason :: term}
end

defmodule TodoDriver.FindDriver do
    @behaviour TodoDriver.FindDriverBehaviour
    def fetch() do 
        %{body: "todo1", id: 1}
    end
end
