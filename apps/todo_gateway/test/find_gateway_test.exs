defmodule TodoGateway.FindGatewayTest do
  use ExUnit.Case
  import Mox

  test "find all success" do
    result = {:ok, %{id: 1, body: "todo1"}}
    TodoDriver.FindDriverMock
    |> expect(:fetchAll, fn -> result end)

    TodoGateway.FindGataway.fetchAll() == %TodoDomain.TodoObject{id: 1, body: "todo1"}
  end

  test "find all failure" do
    result = {:error, "Internal Server Error"}
    TodoDriver.FindDriverMock
    |> expect(:fetchAll, fn -> result end)

    assert TodoDriver.FindDriverMock.fetchAll() == result
    TodoGateway.FindGataway.fetchAll() == result
  end

  test "find By id Success" do
    id = 1
    result = {:ok, %{id: 1, body: "todo1"}}
    TodoDriver.FindDriverMock
    |> expect(:fetchBy, fn id -> result end)

    TodoGateway.FindGataway.fetchBy(id) == %TodoDomain.TodoObject{id: 1, body: "todo1"}
  end
end
