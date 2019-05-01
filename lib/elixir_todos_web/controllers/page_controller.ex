defmodule ElixirTodosWeb.PageController do
  use ElixirTodosWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
