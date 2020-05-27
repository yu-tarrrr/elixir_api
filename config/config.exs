# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :todo_driver,  TodoDriver.Repo,
  database: "todos",
  username: "postgres",
  password: "secret",
  hostname: "localhost",
  ecto_repos: [TodoDriver.Repo]

# config :todo_driver, TodoDriver.Repo,
#   url: "ecto://system:system@localhost:5432/todos",
#   pool_size: 1

# Configures the endpoint
config :todo_rest, TodoRest.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "n0pqZpW83rd4CBref6p4VStUgV7vGHTPt57lnvbSwyroMItHFY8M7NBob2BZit3V",
  render_errors: [view: TodoRest.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TodoRest.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "9DcG7PnL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# #DI
# config :application,
#  find_usecase: TodoUsecase.FindUsecase,
#  find_port: TodoPort.FindPort

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
