require 'language/node'

class PagerdutyCli < Formula
  desc "Pagerduty CLI (of npm package)"
  homepage "https://github.com/martindstone/pagerduty-cli"
  url "https://registry.npmjs.org/pagerduty-cli/-/pagerduty-cli-0.1.15.tgz"
  sha256 "af44a0ec857865104da04072d2239528ef086b309448998fa6c7a8f02db99002"

  depends_on 'node'

  def install
    system 'npm', 'install', *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system 'pd version'
  end
end
