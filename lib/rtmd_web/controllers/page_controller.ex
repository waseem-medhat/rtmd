defmodule RtmdWeb.PageController do
  use RtmdWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def welcome(conn, _params) do
    render(conn, :welcome, layout: false, user: conn.assigns.current_user)
  end
end
