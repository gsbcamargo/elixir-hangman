defmodule Dictionary do

  @word_list "assets/words.txt"
  |> File.read!()
  |> String.split()
  # functions in elixir are defined by 2 parts: name/arity (or the number of parameters it takes)

  def random_word do
    @word_list
    |> Enum.random()
  end
end
