# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :testapp,
  ecto_repos: [Testapp.Repo]

# Configures the endpoint
config :testapp, Testapp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hITLbMja9S7+NWZIYCPNaycEOC7TnDDLUpi0XmNA/DsAQyW46LDgowRrmj+7LVZ6",
  render_errors: [view: Testapp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Testapp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :mix_docker, image: "testapp"
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
