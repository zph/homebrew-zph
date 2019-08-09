# Only works from source but requires large download (3GB+ for LLVM)
# Static linking isn't possible yet with Darwin.
class Kit < Formula
  desc "Binary dependency management - Verify version and SHA256"
  homepage "https://github.com/zph/kit"
  url "https://github.com/zph/kit/archive/v0.9.0.tar.gz"
  sha256 "cad300c54747f6046f4093c1572d026991e8efd466e810b548d30b3effc42c20"

  # depends_on "openssl"
  depends_on "crystal"

  def install
    system "shards install"
    system "mkdir dist"
    system "make build"
    mv "dist/kit-darwin-amd64", "kit"
    bin.install "kit"
  end

  test do
    system "#{bin}/kit", "-v"
  end
end
