defmodule Timex.Ecto.Date.Test do
  use ExUnit.Case

  test "cast/1 map with calendar, year, month, day" do
    map = %{"calendar" => nil, "year" => 2016, "month" => 02, "day" => 14 }
    assert Timex.Ecto.Date.cast(map) == {:ok, Timex.to_date({2016,2,14})}
  end

  test "cast/1 map with castable binaries" do
    date = "2016-02-14"
    assert Timex.Ecto.Date.cast(date) == {:ok, Timex.to_date({2016,2,14})}
  end

end
