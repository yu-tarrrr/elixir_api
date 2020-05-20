# defmodule TodoUsecaseTest do
#   use ExUnit.Case
#   doctest TodoUsecase

#   test "greets the world" do
#     assert TodoUsecase.hello() == :world
#   end
# end
defmodule MyAppTest do
  use ExUnit.Case, async: true

  import Mox

  # Make sure mocks are verified when the test exits
  setup :verify_on_exit!

  test "invokes add and mult" do
    MyApp.CalcMock
    |> expect(:add, fn x, y -> x + y end)
    |> expect(:mult, fn x, y -> x * y end)

    assert MyApp.CalcMock.add(2, 3) == 5
    assert MyApp.CalcMock.mult(2, 3) == 6
  end
end