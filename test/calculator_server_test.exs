defmodule CalculatorServerTest do
  use ExUnit.Case
  alias WxCalc.CalculatorServer, as: CS

  test "basic addition" do
    {:ok, server} = CS.start
    assert "0" == CS.get_display(server)
    server |> CS.number(1)
    assert "1" == CS.get_display(server)
    server |> CS.add
    assert "1" == CS.get_display(server)
    server |> CS.number(2)
    assert "2" == CS.get_display(server)
    server |> CS.equals
    assert "3" == CS.get_display(server)
  end

  test "basic subtraction" do
    {:ok, server} = CS.start
    server |> CS.number(1)
    server |> CS.subtract
    server |> CS.number(2)
    server |> CS.equals
    assert "-1" == CS.get_display(server)
  end

  test "basic division" do
    {:ok, server} = CS.start
    server |> CS.number(4)
    server |> CS.divide
    server |> CS.number(2)
    server |> CS.equals
    assert "2.0" == CS.get_display(server)
  end

  test "basic multiplication" do
    {:ok, server} = CS.start
    server |> CS.number(2)
    server |> CS.multiply
    server |> CS.number(3)
    server |> CS.equals
    assert "6" == CS.get_display(server)
  end
end
