class Bridgellm < Formula
  desc "Let your AI coding agents talk to each other across services"
  homepage "https://github.com/starvader13/bridgellm"
  url "https://registry.npmjs.org/bridgellm/-/bridgellm-0.1.7.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "BridgeLLM", shell_output("#{bin}/bridgellm --help")
  end
end
