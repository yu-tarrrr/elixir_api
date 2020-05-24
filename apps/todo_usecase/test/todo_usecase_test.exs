defmodule TodoUsecaseTest do
  use ExUnit.Case
  import Mox

  setup :verify_on_exit!

  test "find all usecase" do
    result = %{id: 1, body: "todo1"}
    TodoPortMock
    |> expect(:fetch, fn -> result end)

    assert TodoUsecase.FindUsecase.fetchTodos() == result
  end

end  
#   test "invokes add and mult" do
#     MyApp.CalcMock
#     |> expect(:add, fn x, y -> x + y end)
#     |> expect(:mult, fn x, y -> x * y end)

#     assert MyApp.CalcMock.add(2, 3) == 5
#     assert MyApp.CalcMock.mult(2, 3) == 6
#   end
# end