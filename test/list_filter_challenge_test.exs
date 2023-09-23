defmodule ListFilterChallengeTest do
  use ExUnit.Case

  describe "count_odd_number/1" do
    test "count odd numbers" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2 = ["0", "2", "6"]
      list3 = ["1", "3"]
      list4 = ["melon", "apple", "kiwi"]
      list5 = []
      list6 = ["1", "3", "11", "43", "orange", "6", "9", "99"]

      assert ListFilterChallenge.count_odd_number(list1) == 3
      assert ListFilterChallenge.count_odd_number(list2) == 0
      assert ListFilterChallenge.count_odd_number(list3) == 2
      assert ListFilterChallenge.count_odd_number(list4) == 0
      assert ListFilterChallenge.count_odd_number(list5) == 0
      assert ListFilterChallenge.count_odd_number(list6) == 6
    end
end
