defmodule TodoRest.TodoController do
  use TodoRest, :controller
  

  def readAll(conn, _params) do
    result = TodoUsecase.FindUsecaseBehaviour.fetchTodos()
    conn
      |> put_status(200)
      |> json(%{todos: result})
  end
end