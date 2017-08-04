defmodule TirTairngireWeb.PageController do
  use TirTairngireWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
