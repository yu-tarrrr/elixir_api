defmodule TodoRest.Router do
  use TodoRest, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/v1", TodoRest do
    pipe_through :api
    get "/systems/ping", SystemController, :ping
    get "/todos", TodoController, :readAll
  end

end
