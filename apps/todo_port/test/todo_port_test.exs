defmodule TodoPortTest do
  use ExUnit.Case
  doctest TodoPort

  test "greets the world" do
    assert TodoPort.hello() == :world
  end
end
