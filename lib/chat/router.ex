defmodule Chat.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :chat
  get "/", Chat.Controllers.Pages, :index, as: :page
end
