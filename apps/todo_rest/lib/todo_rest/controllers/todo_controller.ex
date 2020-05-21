defmodule TodoRest.TodoController do
  use TodoRest, :controller
  

  def readAll(conn, _params) do
    TodoUsecase.hello()
    conn
      |> put_status(200)
      |> json(%{result: "selected"})
  end
end