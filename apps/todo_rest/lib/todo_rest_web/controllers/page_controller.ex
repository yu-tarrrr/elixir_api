defmodule TodoRestWeb.PageController do
  use TodoRestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
