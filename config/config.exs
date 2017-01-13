# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :cat_app, CatApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YWQOPTfAt+Z1fXUwTgUyFg3qN4daxR+6yfgd5zUR+0f5NrO7+SNgxtkRNpOvHu6f",
  render_errors: [view: CatApp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CatApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
