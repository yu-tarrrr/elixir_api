defmodule TodoGatewayTest do
  use ExUnit.Case
  import Mox

  test "Create Success" do
    body = "my todo2"
    result = {:ok}
    TodoDriver.CreateDriverMock
    |> expect(:create, fn body -> result end)

    TodoGateway.CreateGateway.create(body) == {:ok}
  end
end
