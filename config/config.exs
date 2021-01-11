# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :ttt_interface, TttInterfaceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KT0h4bBKo28pvx0cC44RG06sPZepa3IKVZweoqtptfq5z3Vi1z3V1C3+Y/LmtMtL",
  render_errors: [view: TttInterfaceWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TttInterface.PubSub,
  live_view: [signing_salt: "z+hhzV/U"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
