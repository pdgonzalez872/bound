defmodule BoundTest do
  use ExUnit.Case
  doctest Bound

  test "greets the world" do
    assert Bound.hello() == :world
  end
end
