defmodule TodoRest.TodoController do
  use TodoRest, :controller
  

  def readAll(conn, _params) do
    alias TodoUsecase.FindUsecase
    case FindUsecase.fetchTodos() do
      {:ok, results} ->
        value = results
        |> Enum.map( fn result -> %{id: result.id, body: result.body } end)
        conn
        |> put_status(200)
        |> json(%{todos: value})
      {:error, _} ->
        conn
        |> put_status(500)
        |> json(nil)
    end
  end
end