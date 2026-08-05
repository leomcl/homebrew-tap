class BetterBranch < Formula
  desc "An interactive, fuzzy-finding terminal UI for switching Git branches"
  homepage "https://github.com/leomcl/better-branch"
  version "v0.1.3"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/leomcl/better-branch/releases/download/v0.1.3/better-branch-aarch64-apple-darwin.tar.gz"
    sha256 "19f1b9d37869b6ba9522f2abfd79583dac0c716e6918baa36cec402072816754"
  else
    url "https://github.com/leomcl/better-branch/releases/download/v0.1.3/better-branch-x86_64-apple-darwin.tar.gz"
    sha256 "8c5e9e31896002905f9cae10260680a89f9d25c52432d371df199353ab71621b"
  end

  def install
    bin.install "better-branch"
  end

  test do
    system "#{bin}/better-branch", "--version"
  end
end
