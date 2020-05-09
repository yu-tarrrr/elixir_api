defmodule TodoDomainTest do
  use ExUnit.Case
  doctest TodoDomain

  test "greets the world" do
    assert TodoDomain.hello() == :world
  end
end
