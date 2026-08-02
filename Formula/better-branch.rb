class BetterBranch < Formula
  desc "An interactive, fuzzy-finding terminal UI for switching Git branches"
  homepage "https://github.com/leomcl/better-branch"
  url "https://github.com/leomcl/better-branch/releases/download/v0.1.0/better-branch-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "50f953865b3864496f3fe65e3eb17a76d45f168eacbb156ea95a45b1209ee12a"
  license "MIT"

  def install
    bin.install "better-branch"
  end

  test do
    system "#{bin}/better-branch", "--version"
  end
end
