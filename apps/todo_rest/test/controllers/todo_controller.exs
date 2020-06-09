defmodule TodoUsecase.FindUsecaseTest do
  use ExUnit.Case
  import Mox

  setup :verify_on_exit!

    test "find all success" , %{conn: conn} do
        result = %{id: 1, body; "todo1"}

        TodoUsecase.FindUsecaseMock
        |> expect(:fetchTodos, fn -> result end)
        
        res = conn
        |> get("/v1/todos")
        |> response(200)
        
        assert result == res
    end

    test "find by id success", %{conn: conn} do
        result = %{id: 1, body; "todo1"}

        TodoUsecase.FindUsecaseMock
        |> expect(:fetchTodos, fn -> result end)
        
        res = conn
        |> get("/v1/todo/1")
        |> response(200)
        
        assert result == res
    end
end
