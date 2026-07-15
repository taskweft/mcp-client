defmodule Taskweft.MCP.Client.MixProject do
  use Mix.Project

  @version "0.2.0-dev.0"

  def project do
    [
      app: :taskweft_mcp_client,
      version: @version,
      elixir: "~> 1.17",
      deps: deps(),
      dialyzer: [plt_add_apps: [:mix]],
      description: "MCP client, peer behaviour, and solver wiring for Taskweft",
      package: package(),
      source_url: "https://github.com/taskweft/mcp-client"
    ]
  end

  defp package do
    [
      files: ~w(lib config mix.exs LICENSE*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/taskweft/mcp-client"}
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:ex_mcp, "~> 1.0.0-rc"},
      {:jason, "~> 1.4"},
      {:dialyxir, "~> 1.4", only: [:dev], runtime: false},
      {:propcheck, "~> 1.4", only: [:test, :dev], runtime: false},
      {:mox, "~> 1.2", only: :test}
    ]
  end
end
