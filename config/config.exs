# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :coherence_social,
  ecto_repos: [CoherenceSocial.Repo]

# Configures the endpoint
config :coherence_social, CoherenceSocial.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LZiYh4LGcWogbR2ijgXvtTP08f/379xEr6HC8oIVInBKQHs5UFtlc65ui+DpJrZh",
  render_errors: [view: CoherenceSocial.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CoherenceSocial.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
