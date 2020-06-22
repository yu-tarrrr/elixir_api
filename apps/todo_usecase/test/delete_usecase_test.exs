defmodule TodoUsecase.DeleteUsecaseTest do
  use ExUnit.Case
  import Mox
  alias TodoUsecase.DeleteUsecase

  test "delete success" do
      TodoGateway.DeleteGatewayMock
      |> expect(:deleteBy, fn id -> {:ok, nil} end)

      assert DeleteUsecase.deleteBy(1) == {:ok, nil}
  end
end