class Mmake < Formula
  GIT = "github.com/zph/mmake"
  desc "Go wrapper for forked version of TJ Holowaychuk's Mmake"
  homepage "https://#{GIT}"
  url "https://#{GIT}.git",
      :branch      => "master",
      :revision => "0c5ad3c7e6cbeead537babb33e3ddb2cdb8a2be3"
  head "https://#{GIT}.git"
  version "1.4.1"

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
