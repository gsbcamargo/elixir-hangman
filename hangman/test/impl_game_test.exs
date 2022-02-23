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
    character_list = Enum.to_list(?a..?z) |> List.to_string()
    game = Game.new_game(character_list)
    assert String.contains?(List.to_string(game.letters), String.codepoints(character_list)) == true
  end
end
