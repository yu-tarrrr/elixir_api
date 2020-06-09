defmodule TodoRest.TodoController do
  use TodoRest, :controller
  alias TodoUsecase.FindUsecase
  
  def readAll(conn, _params) do
    case FindUsecase.fetchAll() do
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

  def readBy(conn, %{"id" => id} =_params) do
    
    case FindUsecase.fetchBy(id) do
      {:ok, result} ->
        value = %{id: result.id, body: result.body}
        
        conn
        |> put_status(200)
        |> json(%{todo: value})
      {:error, _} ->
        conn
        |> put_status(500)
        |> json(nil)
    end
  end  
end