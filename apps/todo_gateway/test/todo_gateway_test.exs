defmodule TodoGatewayTest do
  use ExUnit.Case
  import Mox

  test "find all" do
    result = {:ok, %{id: 1, body: "todo1"}}
    TodoDriver.FindDriverMock
    |> expect(:fetch, fn -> result end)

    assert TodoDriver.FindDriverMock.fetch() == result
    TodoGateway.FindGataway.fetch() == %{id: 1, body: "todo1"}
  end
  
end
