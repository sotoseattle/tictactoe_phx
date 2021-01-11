defmodule TttInterfaceWeb.PageController do
  use TttInterfaceWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
