defmodule TodoUsecaseTest do
  use ExUnit.Case
  import Mox
  alias TodoUsecase.FindUsecase
  alias TodoDomain.TodoObject

  test "find all usecase" do
    result = {:ok, [%{body: "mytodo1", id: 1}, %{body: "mytodo", id: 2}]}
    TodoGateway.FindGatewayMock
    |> expect(:fetchAll, fn -> result end)

    assert FindUsecase.fetchAll() == {:ok, [%TodoObject{body: "mytodo1", id: 1}, %TodoObject{body: "mytodo", id: 2}]}
  end

  test "find by id" do
    id = 1
    result = {:ok, %{body: "mytodo1", id: 1}}
    TodoGateway.FindGatewayMock
    |> expect(:fetchBy, fn id -> result end)

    assert FindUsecase.fetchBy(id) == {:ok, %TodoObject{body: "mytodo1", id: 1}}
  end
end  
