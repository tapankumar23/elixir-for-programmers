defmodule Procs do

  #spawn Procs, :hello, [ ]
  #pid = v(-1)
  # OR
  #pid = spawn Procs, :hello, []
  #
  #send pid, "my world"
  #send pid, [1,2,3]
  #send pid, 12345
  def hello(count) do
    receive do

      {:crash, reason} ->
        exit(reason)

      {:quit} ->
        IO.puts "I am out of here"

      {:add, n} ->
        hello(count + n)

      msg ->
        IO.puts "#{count}: Hello #{inspect msg}"
        hello(count)
    end
  end

end
