defmodule JekyllEditor.Index do
  @moduledoc """
  Supplies index information
  """

  @doc """
  Returns directory listing from given path
  """
  def call(path) do
    File.ls path
  end
end
