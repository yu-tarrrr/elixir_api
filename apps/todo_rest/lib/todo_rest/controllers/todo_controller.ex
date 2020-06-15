defmodule TodoRest.TodoController do
  use TodoRest, :controller
  alias TodoUsecase.FindUsecase
  alias TodoUsecase.CreateUsecase
  
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
      :not_found -> 
        conn
        |> put_status(200)
        |> json(%{todo: []})
      {:error, _} ->
        conn
        |> put_status(500)
        |> json(nil)
    end
  end

  def create(conn, _body_params) do
    body = conn.body_params["body"]
    case CreateUsecase.create(body) do
      {:ok} ->
        conn
        |> put_status(:created)
        |> json(%{status: :created})
      {:error, _} ->
        conn
        |> put_status(500)
        |> json(nil)
    end
  end
end