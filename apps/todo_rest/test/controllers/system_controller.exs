defmodule SystemControllersTest do
  use ExUnit.Case
#   test SystemController

  test "greets the world" do
    assert SystemController.ping() == :pong
  end
end