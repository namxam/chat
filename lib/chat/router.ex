defmodule Chat.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :chat
  get "/", Chat.Controllers.Pages, :index, as: :page
  get "/chat", Chat.Controllers.Pages, :chat, as: :chat
end
