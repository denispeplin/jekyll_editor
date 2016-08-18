defmodule JekyllEditor.ShowTest do
  use ExUnit.Case
  doctest JekyllEditor.Show

  alias JekyllEditor.Show

  describe "#call" do
    test "path points to existing file" do
      path = "test/source/_posts/2016-08-15-new-article.markdown"
      {:ok, contents} = Show.call(path)
      assert contents =~ "New Article"
    end

    test "path points to nonexistent file" do
      assert Show.call("/path_to/nonexistent.md") == {:error, :enoent}
    end
  end
end
