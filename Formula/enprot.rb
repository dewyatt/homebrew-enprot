class Enprot < Formula
  desc "Command-line confidentiality processor for text and source code files"
  homepage "https://github.com/dewyatt/enprot"
  url "https://github.com/dewyatt/enprot/archive/0.3.1.tar.gz"
  sha256 "2d4eb8be35c4b208f9e5ddd9fb64f01a36779fcbca9ab8cdc9068d20399cdda2"
  license "BSD-2-Clause"
  head "https://github.com/dewyatt/enprot.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/enprot", "--version"
  end
end
