defmodule BoundTest do
  use ExUnit.Case
  doctest Bound

  import Mox

  setup :verify_on_exit!

  test "greets the world" do
    assert Bound.hello() == :world
  end

  describe "get_weather/1" do
    test "fetches weather based on a location" do
      expect(WeatherBehaviourMock, :get_weather, fn args ->
        # here we can assert on the arguments that get passed to the function
        assert args == "Chicago"

        # here we decide what the mock returns
        {:ok, %{body: "Some html with weather data"}}
      end)

      assert {:ok, _} = Bound.get_weather("Chicago")
    end
  end
end
