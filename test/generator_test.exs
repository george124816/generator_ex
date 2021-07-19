defmodule GeneratorTest do
  use ExUnit.Case
  doctest Generator

  test "greets the world" do
    assert Generator.hello() == :world
  end
end
