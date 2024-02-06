import Config

config :griffin_ssg,
  hooks: %{
    before: [
      fn _ ->
        # Note: this function would also work as an `after` hook.
        File.mkdir_p!("_site/assets/images")
        File.cp_r!("src/assets/images", "_site/assets/images")
      end
    ],
    after: []
  }

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.14.41",
  default: [
    args: ~w(app.js --bundle --target=es2017 --outdir=../_site/assets),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configure tailwind (the version is required)
config :tailwind,
  version: "3.4.1",
  default: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../_site/assets/app.css
    ),
    cd: Path.expand("../assets", __DIR__)
  ]
