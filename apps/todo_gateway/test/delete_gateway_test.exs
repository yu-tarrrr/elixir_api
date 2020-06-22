defmodule DeleteGatewayTest do
  use ExUnit.Case
  import Mox

  test "Delete Success" do
    
    TodoDriver.DeleteDriverMock
    |> expect(:deleteBy, fn id -> {:ok, nil} end)

    TodoGateway.DeleteGateway.deleteBy(1) == {:ok, nil}
  end
end