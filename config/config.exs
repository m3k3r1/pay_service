# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :payService,
  ecto_repos: [PayService.Repo]

# Configures the endpoint
config :payService, PayServiceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LxuTlFbbzRy0vdD18VPHPAU3icQ01Vp4oQzwH0l/cPGkBb6mgEdjSlz01nhZrH9H",
  render_errors: [view: PayServiceWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: PayService.PubSub,
  live_view: [signing_salt: "R5sVs2YK"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
