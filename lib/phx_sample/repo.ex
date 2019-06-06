defmodule PhxSample.Repo do
  use Ecto.Repo,
    otp_app: :phx_sample,
    adapter: Ecto.Adapters.Postgres
end
