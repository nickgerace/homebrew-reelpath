class Reelpath < Formula
  desc "CLI tool that prints the absolute path for a given file or directory."
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/reelpath/archive/1.0.2.tar.gz"
  sha256 "203228f717b5bf8e88660d52993f9f6ebb05ec80a0876b5a26fb02e11f0a1071"
  license "Apache-2.0"

  depends_on "rust" => :build

  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"reelpath"
  end
end
