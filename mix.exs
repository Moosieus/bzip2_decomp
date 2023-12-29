defmodule Bzip2.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/Moosieus/bzip2_decomp"

  def project do
    [
      app: :bzip2_decomp,
      version: @version,
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      description: "An Elixir NIF for bzip2-rs.",
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.30.5", only: :dev, runtime: false},
      {:rustler, ">= 0.0.0", optional: true, runtime: false},
      {:rustler_precompiled, "~> 0.7", runtime: false}
    ]
  end

  defp docs do
    [
      name: "Bzip2 Decomp",
      main: "readme",
      source_ref: "main",
      source_url: @source_url,
      extras: [
        "README.md"
      ]
    ]
  end

  defp package do
    [
      files: [
        "lib",
        "native/bzip2_decomp/.cargo/config",
        "native/bzip2_decomp/src",
        "native/bzip2_decomp/Cargo.toml",
        "native/bzip2_decomp/Cargo.lock",
        "checksum-*.exs",
        "mix.exs"
      ],
      name: "bzip2_decomp",
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end
end
