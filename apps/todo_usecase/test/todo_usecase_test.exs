defmodule TodoUsecaseTest do
  use ExUnit.Case
  import Mox

  setup :verify_on_exit!

  test "find all usecase" do
    result = {:ok, %{id: 1, body: "todo1"}}
    TodoGateway.FindGatewayMock
    |> expect(:fetch, fn -> result end)

    assert TodoGateway.FindGatewayMock.fetch() == result
    assert TodoUsecase.FindUsecase.fetchTodos() == %{id: 1, body: "todo1"}
  end

  # test "no match case" do
  #   TodoGateway.FindGatewayMock
  #   |> expect(:fetch, fn -> :not_found end)

  #   assert TodoGateway.FindGatewayMock.fetch() == :not_found
  #   assert TodoUsecase.FindUsecase.fetchTodos() == nil
  # end
end  
