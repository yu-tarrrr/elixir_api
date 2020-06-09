defmodule TodoGatewayTest do
  use ExUnit.Case
  import Mox

  test "find all success" do
    result = {:ok, %{id: 1, body: "todo1"}}
    TodoDriver.FindDriverMock
    |> expect(:fetch, fn -> result end)

    assert TodoDriver.FindDriverMock.fetch() == result
    TodoGateway.FindGataway.fetch() == %TodoDomain.TodoObject{id: 1, body: "todo1"}
  end

  test "find all failure" do
    result = {:error, "Internal Server Error"}
    TodoDriver.FindDriverMock
    |> expect(:fetch, fn -> result end)

    assert TodoDriver.FindDriverMock.fetch() == result
    TodoGateway.FindGataway.fetch() == result
  end 
end
