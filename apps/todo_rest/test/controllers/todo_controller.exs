defmodule TodoUsecase.FindUsecaseTest do
  use ExUnit.Case
  import Mox

  setup :verify_on_exit!

    test "call usecase" , %{conn: conn} do
        result = %{id: 1, body; "todo1"}

        TodoUsecase.FindUsecaseMock
        |> expect(:fetchTodos, fn -> result end)
        
        res = conn
        |> get("/v1/todos")
        |> response(200)
        
        assert result == res
    end
#   test "invokes add and mult" do
#     MyApp.CalcMock
#     |> expect(:add, fn x, y -> x + y end)
#     |> expect(:mult, fn x, y -> x * y end)

#     assert MyApp.CalcMock.add(2, 3) == 5
#     assert MyApp.CalcMock.mult(2, 3) == 6
#   end
end
