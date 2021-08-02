class Reelpath < Formula
  desc "CLI tool that prints the absolute path for a given file or directory."
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/reelpath/archive/1.2.1.tar.gz"
  sha256 "c60ac7eb194e0414e1464b890695c9b0a9f88ea5b6022daf40a7b911b86363f5"
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
