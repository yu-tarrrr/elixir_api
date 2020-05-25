defmodule TodoDriver.Repo do
  use Ecto.Repo,
    otp_app: :todo_driver,
    adapter: Ecto.Adapters.Postgres
end
