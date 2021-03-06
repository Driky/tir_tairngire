# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tir_tairngire,
  ecto_repos: [TirTairngire.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :tir_tairngire, TirTairngireWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "R25Gxdcx1mQ+tIZ+TAke0u2ST0tobO4oYc0BRHrQWg9NMXT9N0cvBjiJNEShpQWt",
  render_errors: [view: TirTairngireWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TirTairngire.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :guardian, Guardian,
  allowed_algos: ["HS256"],
  issuer: "TirTairngire",
  ttl: { 30, :days },
  allowed_drift: 2000,
  verify_issuer: true, # optional
  secret_key: "R25Gxdcx1mQ+tIZ+TAke0u2ST0tobO4oYc0BRHrQWg9NMXT9N0cvBjiJNEShpQWt",
serializer: RealWorld.GuardianSerializer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
