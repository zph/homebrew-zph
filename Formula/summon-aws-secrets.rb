class SummonAwsSecrets < Formula
  VERSION = "v0.3.0"
  BINARY = "summon-aws-secrets"
  desc "Summon provider for AWS Secrets Manager"
  homepage "https://github.com/cyberark/summon-aws-secrets"

  version VERSION
  BASE_URL = "https://github.com/cyberark/summon-aws-secrets/releases/download/#{VERSION}/#{BINARY}"

  if OS.mac?
    url "#{BASE_URL}-darwin-amd64.tar.gz"
    sha256 "f995961357f82709c78a9850186d6110a6075bc7d61a9eadc50e28b08346c455"
  else
    url "#{BASE_URL}-linux-amd64.tar.gz"
    sha256 "6eb2dd5b0819af399a76f792a7356269f38992eb0fc7aca0250b0930e330c781"
  end

  def install
    mkdir_p "summon"
    mv BINARY, "summon/#{BINARY}"
    lib.install "summon"
  end
end
