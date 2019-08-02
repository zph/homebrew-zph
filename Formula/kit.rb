class Kit < Formula
  desc "Binary dependency management - Verify version and SHA256"
  homepage "https://github.com/zph/kit"
  url "https://github.com/zph/kit/releases/download/v0.9.0/kit-darwin-amd64"
  sha256 "c19dcdcbd4961a3758443bcacffb6dd5e1c3900ee7084c58ce2a45694890bd2a"

  depends_on "openssl"

  def install
    mv "kit-darwin-amd64", "kit"
    bin.install "kit"
  end

  test do
    system "#{bin}/kit", "-v"
  end
end
