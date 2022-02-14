defmodule Dictionary do

  @word_list "assets/words.txt"
  |> File.read!()
  |> String.split()
  # functions in elixir are defined by 2 parts: name/arity (or the number of parameters it takes)

  def random_word do
    @word_list
    |> Enum.random()
  end

  # challenges from the course Pattern Matching section

  def func(_t = { a, b }) do
    IO.puts("a = #{a}, b = #{b}, is_tuple{t}")
  end

  def swap_values({a, b}), do: {b, a}

  def same(a, a), do: true
  def same(_, _), do: false

  def len([]), do: 0
  def len([_head|tail]), do: 1 + len(tail)

  # end of the Pattern Matching challenges
end
