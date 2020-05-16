defmodule TodoRest.SystemController do
  use TodoRest, :controller

  def ping(conn, _params) do
    conn
    |> put_status(:ok)
    |> text("pong")
  end
end