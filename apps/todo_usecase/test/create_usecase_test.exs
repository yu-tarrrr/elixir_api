defmodule TodoUsecase.CreateUsecaseTest do
  use ExUnit.Case
  import Mox
  alias TodoUsecase.CreateUsecase

  test "create todo" do
    body = "this is new todo"
    result = {:ok}
    TodoGateway.CreateGatewayMock
    |> expect(:create, fn body -> result end)

    assert CreateUsecase.create(body) == {:ok}
  end
end