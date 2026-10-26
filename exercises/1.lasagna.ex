defmodule Lasagna do
  def expected_minutes_in_oven(), do: 40

  def remaining_minutes_in_oven(time_in_oven), do: expected_minutes_in_oven() - time_in_oven

  def preparation_time_in_minutes(layers_qty), do: 2 * layers_qty

  def total_time_in_minutes(layers_qty, time_in_oven) do
    preparation_time_in_minutes(layers_qty) + time_in_oven
  end

  def alarm(), do: "Ding!"
end

Lasagna.expected_minutes_in_oven()
