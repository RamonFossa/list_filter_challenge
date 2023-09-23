defmodule ListFilterChallenge do
  def count_odd_number(list) do
    filtered_list = filter_list(list)
    count_odd(filtered_list)
  end

  defp filter_list(list) do
    Enum.flat_map(list, fn string ->
      if is_number(string) do
        [string]
      else
        case Integer.parse(string) do
          {int, _rest} -> [int]
          :error -> []
        end
      end
    end)
  end

  defp count_odd(list) do
    Enum.count(list, fn number -> rem(number, 2) != 0 end)
  end
end
