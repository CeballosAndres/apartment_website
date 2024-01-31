defmodule ApartmentWebsite.MixProject do
  use Mix.Project

  def project do
    [
      app: :apartment_website,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  defp aliases() do
    [
      build: [
        "grf.build", 
        "tailwind default --minify", 
        "esbuild default --minify --loader:.jpg=file"
      ]
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
      {:griffin_ssg, "~> 0.3"},
      {:esbuild, "~> 0.5"},
      {:tailwind, "~> 0.1.8"}
    ]
  end

end
