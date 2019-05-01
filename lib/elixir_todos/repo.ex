defmodule ElixirTodos.Repo do
  use Ecto.Repo,
    otp_app: :elixir_todos,
    adapter: Ecto.Adapters.Postgres
end
