defmodule HangmanImplGameTest do
  use ExUnit.Case
  alias Hangman.Impl.Game

  test "new game returns correct word" do
    game = Game.new_game("wombat")
    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert game.letters == ["w", "o", "m", "b", "a", "t"]
  end

  test "each element is lower case ASCII character" do
    word = "wombat"
    game = Game.new_game(word)
    alphabet = Enum.to_list(?a..?z) |> List.to_string

  #  assert Enum.each(letters, fn(letter) ->
  #     String.contains?(letter, String.to_charlist(alphabet))
  #   end) == true

   assert for letter <- game.letters, do: String.contains?(alphabet, letter)
  end

  test "state doesn't change if a game is won" do
    game = Game.new_game("wombat")
    game = Map.put(game, :game_state, :won)
    { new_game, _tally } = Game.make_move(game, "x")
    assert new_game == game
  end

end
