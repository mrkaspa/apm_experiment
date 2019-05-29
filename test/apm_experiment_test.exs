defmodule ApmExperimentTest do
  use ExUnit.Case
  doctest ApmExperiment

  test "greets the world" do
    assert ApmExperiment.hello() == :world
  end
end
