class Pather < Formula
  VERSION = "v0.1.0"
  desc "Toy nim program to dedupe PATH"
  homepage "https://github.com/zph/pather"
  url "https://github.com/zph/pather.git", revision: VERSION
  version VERSION
  sha256 "6930f431b163a2404c8bf99d0bede57229a18109e06aa8d96198738fdf2f33da"
  license "MIT"

  depends_on "nim" => :build

  def install
    system "make", "release-build"
    bin.install "dist/pather" => "pather"
  end

  test do
    system "${bin}/pather"
  end
end
