class Mmake < Formula
  GIT = "github.com/zph/mmake"
  desc "Go wrapper for forked version of TJ Holowaychuk's Mmake"
  homepage "https://#{GIT}"
  url "https://#{GIT}.git",
      :branch      => "master",
      :revision => "b271a72fab54ea47913eb9b848362736156599dc"
  head "https://#{GIT}.git"
  version "1.4.0"

  depends_on "go"

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/#{GIT}").install buildpath.children
    cd "src/#{GIT}" do
      system "make build"
      bin.install "dist/mmake" => "mmake"
    end
  end
end
