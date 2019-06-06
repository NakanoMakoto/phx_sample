defmodule PhxSampleWeb.PageController do
  use PhxSampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
