defmodule Hangman do

  alias Hangman.Impl.Game # automatically alias to game
  alias Hangman.Type

  @opaque game :: Game.t

  @spec new_game() :: game
  defdelegate new_game, to: Game # the actual implementation of new game is now delegated to the module Game, aliased above

  @spec make_move(game, String.t) :: { game, Type.tally }
  def make_move(_game, _guess) do
  end

end
