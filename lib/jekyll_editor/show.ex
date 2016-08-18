defmodule JekyllEditor.Show do
  @moduledoc """
  Shows file content
  """

  @doc """
  Returns file content from given fullpath
  """
  def call(path) do
    File.read path
  end
end
