class Greet < Formula
  desc ""
  homepage ""
  url "https://github.com/alfonsoSR/greet/archive/refs/tags/v0.1.tar.gz"
  sha256 "7bb30c5ac5588d5708ba85cb3fa1a21f7082585f2a6d8503d43d82e68a4dff7c"
  license ""

  def install
	bin.install "bin/greet"
  end
end
