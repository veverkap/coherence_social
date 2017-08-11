defmodule CoherenceSocial.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [app: :coherence_social,
     version: @version,
     elixir: "~> 1.3",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     start_permanent: Mix.env == :prod,
     build_embedded: Mix.env == :prod,
     docs: [extras: ["README.md"], main: "Coherence"],
     deps: deps(),
     package: package()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {CoherenceSocial.Application, []},
     extra_applications: [:logger, :runtime_tools]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:coherence, github: "smpallen99/coherence", rel: "phx-1.3"},
      {:cowboy, "~> 1.0"},
      {:gettext, "~> 0.11"},
      {:phoenix, "~> 1.3.0-rc"},
      {:phoenix_ecto, "~> 3.2"},
      {:phoenix_html, "~> 2.6"},
      {:phoenix_pubsub, "~> 1.0"},
      {:postgrex, ">= 0.0.0"},
      {:phoenix_live_reload, "~> 1.0", only: :dev}]
  end

  defp package do
    [ maintainers: ["Patrick Veverka"],
      licenses: ["MIT"],
      links: %{ "Github" => "https://github.com/veverkap/coherence_social" },
      files: ~w(lib priv README.md mix.exs LICENSE)]
  end
end
