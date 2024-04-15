class Pather < Formula
  VERSION = "v0.1.0"
  desc "Toy nim program to dedupe PATH"
  homepage "https://github.com/zph/pather"
  url "https://github.com/zph/pather.git", revision: VERSION
  version VERSION
  sha256 "2682751435097f73a4763a6220d9e5334732795b"
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
