# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_todos,
  ecto_repos: [ElixirTodos.Repo]

# Configures the endpoint
config :elixir_todos, ElixirTodosWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WvqDzHp3lGyE7RKklKRgDo2HRUNP+bG6s6y5DRrkhvOi8qEmbPycPnKUGqN9r653",
  render_errors: [view: ElixirTodosWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirTodos.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "KuB/S95qvu7GD5Ug0v92t5tL7Wqw76t6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
