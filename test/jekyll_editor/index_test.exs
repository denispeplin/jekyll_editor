defmodule JekyllEditor.IndexTest do
  use ExUnit.Case
  doctest JekyllEditor.Index

  test "#call" do
    assert JekyllEditor.Index.call("test/source") ==
      {:ok, ["2016-08-14-welcome-to-jekyll.markdown", "2016-08-15-new-article.markdown"]}
  end
end
