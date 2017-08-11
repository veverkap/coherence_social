defmodule CoherenceSocial.Web.PageController do
  use CoherenceSocial.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
