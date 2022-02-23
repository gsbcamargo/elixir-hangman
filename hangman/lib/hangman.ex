defmodule Hangman do

  alias Hangman.Impl.Game # automatically alias to game

  @type   state :: :initializing | :won | :lost | :good_guess | :bad_guess | :letter_already_used
  @opaque game :: Game.t
  @type   tally :: %{
    turns_left: integer,
    game_state: state,
    letters: list(String.t),
    used_letters: list(String.t),
  }

  @spec new_game() :: game
  defdelegate new_game, to: Game # the actual implementation of new game is now delegated to the module Game, aliased above

  @spec make_move(game, String.t) :: { game, tally }
  def make_move(_game, _guess) do
  end

end
