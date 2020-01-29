# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SummonS3 < Formula
  VERSION = "v0.2.0"
  BINARY = "summon-s3"
  version VERSION
  desc "AWS S3 provider for Summon"
  homepage "https://github.com/cyberark/summon-s3"
  BASE_URL = "https://github.com/cyberark/summon-s3/releases/download/#{VERSION}/#{BINARY}"

  if OS.mac?
    url "#{BASE_URL}-darwin-amd64.tar.gz"
    sha256 "c5f7eb586ec0b585e892c8a92070d096b57b861f1718ef20ecfdbb9c7234034e"
  else
    puts "Unsupported OS"
    exit 1
  end

  def install
    mkdir_p "summon"
    mv BINARY, "summon/#{BINARY}"
    lib.install "summon"
  end

  test do
    system "/usr/local/lib/summon/summon-s3"
  end
end
