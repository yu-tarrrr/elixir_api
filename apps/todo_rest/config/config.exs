# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :todo_rest, TodoRestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9ZkA1Ht4h5qxOeD5BRbdHHZEOxqzjXhQol+eYLWAm+BHXk7BADLCfCGL7N5CSnt/",
  render_errors: [view: TodoRestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TodoRest.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "b6ju/k0z"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
