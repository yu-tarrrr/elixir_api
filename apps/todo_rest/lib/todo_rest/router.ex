defmodule TodoRest.Router do
  use TodoRest, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/v1", TodoRest do
    pipe_through :api
    get "/systems/ping", SystemController, :ping
    get "/todos", TodoController, :readAll
    get "/todo/:id", TodoController, :readBy
    post "/todo", TodoController, :create
    delete "/todo/:id", TodoController, :deleteBy
  end

end
