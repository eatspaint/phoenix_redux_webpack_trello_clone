# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phoenix_trello, PhoenixTrello.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "FIRXQLgc7+YglJEr3LQXPfzQM2qyO0EWoOeVDYKbqEo/tAN/RhJvd1wC1kQG3+aZ",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: PhoenixTrello.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

config :guardian, Guardian,
  issuer: "PhoenixTrello",
  ttl: { 3, :days },
  verify_issuer: true,
  secret_key: "KpVJp1L767Ju209iUQrfVbfFQmmbLNkIsRPiRM+6AFLOFGdoeOJ6iwLXDNAe2cBi",
  serializer: PhoenixTrello.GuardianSerializer
