defmodule Dictionary do

  @word_list "../assets/words.txt"
             |> Path.expand(__DIR__)
             |> File.read!()
             |> String.split(~r/\n/)

  def random_word() do
    @word_list
    |> Enum.random()
  end

end
