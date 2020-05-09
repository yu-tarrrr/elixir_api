defmodule TodoDriverTest do
  use ExUnit.Case
  doctest TodoDriver

  test "greets the world" do
    assert TodoDriver.hello() == :world
  end
end
