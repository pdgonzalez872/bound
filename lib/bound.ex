defmodule Bound do
  @moduledoc """
  Documentation for `Bound`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Bound.hello()
      :world

  """
  def hello do
    :world
  end

  def get_weather(city) do
    weather_impl().get_weather(city)
  end

  defp weather_impl() do
    Application.get_env(:bound, :weather, WeatherImpl)
  end
end
