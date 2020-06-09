defmodule TodoRest.TodoController do
  use TodoRest, :controller
  alias TodoUsecase.FindUsecase
  
  def readAll(conn, _params) do
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

  def readBy(conn, _params) do
    conn
    |> put_status(200)
    |> json(_params)

  end  
end