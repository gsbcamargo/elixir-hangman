defmodule Hangman.Type do

  @type state :: :initializing | :won | :lost | :good_guess | :bad_guess | :letter_already_used

  @type tally :: %{
    turns_left: integer,
    game_state: state,
    letters: list(String.t),
    used_letters: list(String.t),
  }
end
