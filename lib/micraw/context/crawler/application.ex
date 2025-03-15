defmodule Micraw.Context.Crawler.Application do
  
  use Application

  def start(_type, _args) do
    children = [
      # Queues and workers go here
      Micraw.Context.Crawler.Interface.Queue.Queue,
      Micraw.Context.Crawler.Interface.Queue.Worker
    ]

    opts = [strategy: :one_for_one, name: Micraw.Context.Crawler.Application.Supervisor]
    Supervisor.start_link(children, opts)
  end


end
