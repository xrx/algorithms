defmodule InsertionSort do
  def sort(list) when is_list(list), do: sort(list, [])

  def sort([], sorted), do: sorted
  def sort([h | t], sorted), do: sort(t, insert(h, sorted))

  defp insert(n, []), do: [n]
  defp insert(n, sorted) when n < hd(sorted), do: [n | sorted]
  defp insert(n, [h | t]), do: [h | insert(n, t)]
end

ExUnit.start

defmodule InsertionSortTest do
  use ExUnit.Case
  @sorted for x <- 0..100, do: x
  @to_sort Enum.take_random(@sorted, length(@sorted))

  IO.inspect @to_sort
  test "it sorts them correctly" do
    assert InsertionSort.sort(@to_sort) == @sorted
  end

  test "returns an empty list" do
    assert InsertionSort.sort([]) == []
  end

  test "returns the only element in the list" do
    assert InsertionSort.sort([99]) == [99]
  end
end
