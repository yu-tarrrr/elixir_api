defmodule TodoUsecaseTest do
  use ExUnit.Case
  import Mox
  alias TodoUsecase.FindUsecase
  alias TodoGateway.FindGataway
  alias TodoDomain.TodoObject

  test "find all usecase" do
    result = {:ok, [%{body: "mytodo1", id: 1}, %{body: "mytodo", id: 2}]}
    TodoGateway.FindGatewayMock
    |> expect(:fetch, fn -> result end)

    # assert TodoGateway.FindGatewayMock.fetch() == result
    assert FindUsecase.fetchTodos() == {:ok, [%TodoObject{body: "mytodo1", id: 1}, %TodoObject{body: "mytodo", id: 2}]}
  end
end  
