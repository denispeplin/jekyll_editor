defmodule JekyllEditor.Index do
  @moduledoc """
  Supplies index information from _posts under given path
  """

  @doc """
  Returns _posts directory listing from given Jekyll path
  """
  def call(path) do
    path
    |> posts_path
    |> File.ls
  end

  defp posts_path(source_path) do
    Path.join source_path, "_posts"
  end
end
