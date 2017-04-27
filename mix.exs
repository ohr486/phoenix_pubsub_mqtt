defmodule PhoenixPubsubMqtt.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_pubsub_mqtt,
     version: "0.0.1",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package(),
     description: """
     The MQTT pubsub adapter for the Phoenixframework
     """]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:phoenix, github: "phoenixframework/phoenix"},
      {:hulaaki, "~> 0.0.4"}
    ]
  end

  defp package do
    [contributors: ["ohr486"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/ohr486/phoenix_pubsub_mqtt"}
    ]
  end
end
