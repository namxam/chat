defmodule Chat.Controllers.Pages do
  use Phoenix.Controller

  def index(conn, _params) do
    render conn, "index"
  end

  def chat(conn, %{"user_name" => user_name}) do
    render conn, "chat", user_name: user_name
  end
end
