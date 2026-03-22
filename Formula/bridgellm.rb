class Bridgellm < Formula
  desc "Let your AI coding agents talk to each other across services"
  homepage "https://github.com/starvader13/bridgellm"
  url "https://registry.npmjs.org/bridgellm/-/bridgellm-0.1.7.tgz"
  sha256 "fcef76624f87ff611cc572ea5ff3ee1bae86e202e39725b731674f4e206c5200"
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
