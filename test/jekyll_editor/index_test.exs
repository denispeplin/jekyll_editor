defmodule JekyllEditor.IndexTest do
  use ExUnit.Case
  doctest JekyllEditor.Index

  alias JekyllEditor.Index

  describe "#call" do
    test "path points to proper Jekyll site" do
      assert Index.call("test/source/_posts") ==
        {:ok, ["2016-08-14-welcome-to-jekyll.markdown", "2016-08-15-new-article.markdown"]}
    end

    test "path points to nonexistent folder" do
      assert Index.call("nonexistent") == {:error, :enoent}
    end
  end
end
