defmodule Dictionary.Runtime.Application do

  use Application

  def start(_type, _args) do
    children = [
      { Dictionary.Runtime.Server, [] }
    ]

    options = [
      name: Dictionary.Runtime.Supervisor,
      ## What strategy should be done with other process when this process stops
      strategy: :one_for_one,
    ]

    Supervisor.start_link(children, options)
  end
end