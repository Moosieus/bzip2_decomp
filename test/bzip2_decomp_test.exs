defmodule Bzip2Test do
  use ExUnit.Case
  doctest Bzip2

  test "test decompression" do
    expected = File.read!("test/examples/hello_ground.txt")
    compressed = File.read!("test/examples/hello_ground.bz2")

    assert expected === Bzip2.decompress(compressed)
  end

  test "bad input is handled gracefully" do
    garbage = <<"lorem ipsum di amet">>

    assert {:error, _} = Bzip2.decompress(garbage)
  end
end
