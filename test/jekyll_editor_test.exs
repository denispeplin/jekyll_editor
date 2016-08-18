defmodule JekyllEditorTest do
  use ExUnit.Case
  doctest JekyllEditor

  import Mock

  describe "#index" do
    test "call to JekyllEditor.Index" do
      with_mock JekyllEditor.Index, [call: fn(_path) -> {:ok, ["file.md"]} end] do
        results = JekyllEditor.index("path")
        assert called JekyllEditor.Index.call("path/_posts")
        assert results == {:ok, ["file.md"]}
      end
    end
  end

  describe "#show" do
    test "call to JekyllEditor.Show" do
      with_mock JekyllEditor.Show, [call: fn(_path) -> {:ok, "Contents"} end] do
        results = JekyllEditor.show("path", "filename.md")
        assert called JekyllEditor.Show.call("path/_posts/filename.md")
        assert results == {:ok, "Contents"}
      end
    end
  end
end
