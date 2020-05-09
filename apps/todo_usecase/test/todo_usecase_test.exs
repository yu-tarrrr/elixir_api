defmodule TodoUsecaseTest do
  use ExUnit.Case
  doctest TodoUsecase

  test "greets the world" do
    assert TodoUsecase.hello() == :world
  end
end
