# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :educpop,
  ecto_repos: [Educpop.Repo]

# Configures the endpoint
config :educpop, EducpopWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "K5PiSn4iSyTQWFWGhwWorBpLZF9fD1cjsLcDDMGDKtzTyV/nrelCyp5mjOLFeklH",
  render_errors: [view: EducpopWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Educpop.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
