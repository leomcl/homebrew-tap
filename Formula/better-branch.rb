class BetterBranch < Formula
  desc "An interactive, fuzzy-finding terminal UI for switching Git branches"
  homepage "https://github.com/leomcl/better-branch"
  url "https://github.com/leomcl/better-branch/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "4df05c2fcd9c02218b90678ae69d174b38ad4d71d4a11e50cd10103ec6fa76f8"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
