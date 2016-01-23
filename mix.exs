defmodule WxCalc.Mixfile do
  use Mix.Project

  def project do
    [app: :wx_calc,
     version: "0.0.2",
     elixir: "~> 1.1.1",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [ applications: [],
      mod: { WxCalc, [] } ]
  end

  # List all dependencies in the format:
  #
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:exactor, "~> 2.2.0"}
    ]
  end
end
