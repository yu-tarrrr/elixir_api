defmodule TodoUsecaseTest do
  use ExUnit.Case
  import Mox
  alias TodoUsecase.FindUsecase
  alias TodoGateway.FindGataway

  test "find all usecase" do
    result = [%{body: "mytodo1", id: 1}, %{body: "mytodo", id: 2}]
    TodoGateway.FindGatewayMock
    |> expect(:fetch, fn -> result end)

    # assert TodoGateway.FindGatewayMock.fetch() == result
    assert FindUsecase.fetchTodos() == [%{body: "mytodo1", id: 1}, %{body: "mytodo", id: 2}]
  end
end  
