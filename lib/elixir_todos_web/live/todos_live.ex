defmodule ElixirTodosWeb.TodoLive do
  use Phoenix.LiveView

  alias ElixirTodos.Todos
  alias ElixirTodosWeb.TodoView

  def mount(_session, socket) do
    {:ok, fetch(socket)}
  end

  def render(assigns) do
    TodoView.render("todos.html", assigns)
  end

  def handle_event("add", %{"todo" => todo}, socket) do
    Todos.create_todo(todo)

    {:noreply, fetch(socket)}
  end

  defp fetch(socket) do
    assign(socket, todos: Todos.list_todos())
  end
end
