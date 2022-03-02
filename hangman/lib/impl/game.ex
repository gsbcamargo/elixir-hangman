defmodule Hangman.Impl.Game do

  alias Hangman.Type

  @type t :: %Hangman.Impl.Game{ # %__MODULE__ for shorts
    turns_left: integer,
    game_state: Type.state,
    letters: list(String.t),
    letters_used: MapSet.t(String.t)
  }

  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters: [],
    letters_used: MapSet.new()
  )

  @spec new_game() :: t
  def new_game do
      new_game(Dictionary.random_word)
  end

  @spec new_game(String.t) :: t
  def new_game(word) do
    %__MODULE__{
      letters: word |> String.codepoints()
    }
  end

  @spec make_move(t, String.t) :: { t, Type.tally }
  def make_move(game = %{ game_state: :won }, _guess) do
    { game, tally(game) }

  end

  defp tally(game) do
    %{
      turns_left: game.turns_left,
      game_state: game.game_state,
      letters: [],
      letters_used: game.letters_used |> MapSet.to_list |> Enum.sort
    }
  end

end
