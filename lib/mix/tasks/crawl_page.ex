defmodule Mix.Tasks.CrawlPage do
  use Mix.Task
  alias Micraw.Context.Crawler.Interface.Console.CrawlPage

  def run (args) do
    CrawlPage.handle(args)
  end

end
