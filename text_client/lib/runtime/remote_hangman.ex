defmodule TextClient.Runtime.RemoteHangman do

  @remote_server :hangman@tapan
  def connect() do
    pid = :rpc.call(@remote_server, Hangman, :new_game, [])
  end
end