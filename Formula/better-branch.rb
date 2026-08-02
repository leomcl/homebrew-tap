class BetterBranch < Formula
  desc "An interactive, fuzzy-finding terminal UI for switching Git branches"
  homepage "https://github.com/leomcl/better-branch"
  version "v0.1.1"

  if Hardware::CPU.arm?
    url "https://github.com/leomcl/better-branch/releases/download/v0.1.1/better-branch-aarch64-apple-darwin.tar.gz"
    sha256 "d6bb184e4491de799419f8331fb65796a7acae5f9f2aac9858e407e6c4c0524e"
  else
    url "https://github.com/leomcl/better-branch/releases/download/v0.1.1/better-branch-x86_64-apple-darwin.tar.gz"
    sha256 "00057baec90300a9150a02f20690b28efc6176165da0c55b94efeabe9557ebec"
  end

  def install
    bin.install "better-branch"
  end
end
