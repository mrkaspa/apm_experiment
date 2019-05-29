defmodule ApmExperiment.MixProject do
  use Mix.Project

  def project do
    [
      app: :apm_experiment,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :inets, :ssl],
      mod: {ApmExperiment.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:opencensus, "~> 0.8", override: true},
      {:opencensus_elixir, "~> 0.3.0"},
      {:opencensus_zipkin, "~> 0.1.0"}
    ]
  end
end
