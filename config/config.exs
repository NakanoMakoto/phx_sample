# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_sample,
  ecto_repos: [PhxSample.Repo]

# Configures the endpoint
config :phx_sample, PhxSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "z0++TNTNsz/8f01aipB8e3bBfWYAKaA+hn59647O8isFbR+/nMrLoFp1jU+qJ37A",
  render_errors: [view: PhxSampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxSample.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
