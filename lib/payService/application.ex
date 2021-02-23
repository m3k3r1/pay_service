defmodule PayService.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      PayService.Repo,
      # Start the Telemetry supervisor
      PayServiceWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: PayService.PubSub},
      # Start the Endpoint (http/https)
      PayServiceWeb.Endpoint
      # Start a worker by calling: PayService.Worker.start_link(arg)
      # {PayService.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PayService.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PayServiceWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
