defmodule JekyllEditor do
  @moduledoc """
  Wrapper to app functions
  """

  @doc """
  Calls JekyllEditor.Index
  """
  def index(path) when is_binary(path) do
    path
    |> posts_path
    |> JekyllEditor.Index.call
  end

  @doc """
  Calls JekyllEditor.Show
  """
  def show(path, filename) when is_binary(path) and is_binary(filename) do
    path
    |> posts_path
    |> file_fullpath(filename)
    |> JekyllEditor.Show.call
  end

  defp posts_path(source_path) do
    Path.join source_path, "_posts"
  end

  def file_fullpath(path, filename) do
    Path.join path, filename
  end
end
