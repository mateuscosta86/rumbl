defmodule Rumbl.Accounts do
  @moduledoc """
  The Accounts context
  """

  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: 1, name: "Mateus", username: "mateuscosta"},
      %User{id: 2, name: "Jose", username: "josevalim"},
      %User{id: 3, name: "Chris", username: "chrismccord"}
    ]
  end

  def get_user(id), do: Enum.find(list_users(), fn user -> user.id == id end)

  def get_user_by(params) do
    Enum.find(list_users(), fn user ->
      Enum.all?(params, fn {key, value} -> Map.get(user, key) == value end)
    end)
  end
end
