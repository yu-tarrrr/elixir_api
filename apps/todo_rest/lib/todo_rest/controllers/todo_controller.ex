defmodule TodoRest.TodoController do
  use TodoRest, :controller

  def readAll(conn, _params) do
    conn
      |> put_status(200)
      |> json(%{result: "selected"})
  end
end