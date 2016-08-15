defmodule JekyllEditor do
  @moduledoc """
  Wrapper to app functions
  """

  @doc """
  Calls JekyllEditor.Index
  """
  def index(path) do
    JekyllEditor.Index.call(path)
  end
end
