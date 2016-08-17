defmodule JekyllEditor.IndexTest do
  use ExUnit.Case
  doctest JekyllEditor.Index

  describe "#call" do
    test "path points to proper Jekyll site" do
      assert JekyllEditor.Index.call("test/source") ==
        {:ok, ["2016-08-14-welcome-to-jekyll.markdown", "2016-08-15-new-article.markdown"]}
    end

    test "path points to folder without _posts" do
      assert JekyllEditor.Index.call("test") == {:error, :enoent}
    end

    test "path points to nonexistent folder" do
      assert JekyllEditor.Index.call("nonexistent") == {:error, :enoent}
    end
  end
end
