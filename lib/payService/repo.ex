defmodule PayService.Repo do
  use Ecto.Repo,
    otp_app: :payService,
    adapter: Ecto.Adapters.Postgres
end
