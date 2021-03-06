defmodule LbSearchex.Mixfile do
  use Mix.Project

  def project do
    [app: :lb_searchex,
     version: "0.0.2",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  def application do
    [mod: {LbSearchex, []},
     applications: [:phoenix, :cowboy, :logger, :postalex, :dotenv, :jsx, :couchbeam]]
  end

  defp deps do
    [
      {:phoenix, "~> 0.7.2"},
      {:poison, "~> 1.2", [optional: false, hex: :poison, override: true]},
      {:cowboy, "~> 1.0"},
      {:exrm, "~> 0.14.16"},
      {:postalex, github: "lokalebasen/postalex", tag: "v0.1.9"}
    ]
  end
end
