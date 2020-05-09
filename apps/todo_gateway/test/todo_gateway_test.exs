defmodule TodoGatewayTest do
  use ExUnit.Case
  doctest TodoGateway

  test "greets the world" do
    assert TodoGateway.hello() == :world
  end
end
