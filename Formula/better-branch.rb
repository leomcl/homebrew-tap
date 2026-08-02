class BetterBranch < Formula
  desc "An interactive, fuzzy-finding terminal UI for switching Git branches"
  homepage "https://github.com/leomcl/better-branch"
  version "v0.1.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/leomcl/better-branch/releases/download/v0.1.2/better-branch-aarch64-apple-darwin.tar.gz"
    sha256 "d1a17e12c8e51e766bd0c70d51131d5aa5975fe042e0e17255c61e499913a0aa"
  else
    url "https://github.com/leomcl/better-branch/releases/download/v0.1.2/better-branch-x86_64-apple-darwin.tar.gz"
    sha256 "fd0aec36860f66fded5e13c4586716d347bd49adc0e52bb64103e0b6b880e8dd"
  end

  def install
    bin.install "better-branch"
  end

  test do
    system "#{bin}/better-branch", "--version"
  end
end
