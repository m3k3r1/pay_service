defmodule PayServiceWeb.WelcomeController do
  use PayServiceWeb, :controller

  def index(conn, _params) do
    text(conn, 'Hello world')
  end
end
