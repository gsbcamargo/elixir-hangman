defmodule Hangman.Impl.Game do

  @type t :: %Hangman.Impl.Game{
    turns_left: integer,
    game_state: Hangman.state,
    letters: list(String.t),
    letters_used: MapSet.t(String.t)
  }

  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters: [],
    letters_used: MapSet.new()
  )

  def new_game do
    %Hangman.Impl.Game{ # %__MODULE__ for shorts
      letters: Dictionary.random_word |> String.codepoints()
    }
  end
end
