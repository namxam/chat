defmodule Chat.Mixfile do
  use Mix.Project

  def project do
    [ app: :chat,
      version: "0.0.1",
      elixir: "~> 0.14.2",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { Chat, [] },
      applications: [:phoenix]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      {:phoenix, "0.3.0"},
      {:cowboy, "~> 0.10.0", github: "extend/cowboy", optional: true}
    ]
  end
end
