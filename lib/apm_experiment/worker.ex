defmodule ApmExperiment.Worker do
  use GenServer
  require Logger
  import Opencensus.Trace

  def start_link(_args) do
    GenServer.start_link(__MODULE__, [])
  end

  def init(_) do
    {:ok, %{}, 1000}
  end

  def handle_info(:timeout, state) do
    with_child_span("demo") do
      Logger.info("entro a timeout")
    end

    {:noreply, state, 1000}
  end
end
