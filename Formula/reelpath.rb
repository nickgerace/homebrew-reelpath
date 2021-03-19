class Reelpath < Formula
  desc "CLI tool that prints the absolute path for a given file or directory."
  homepage "https://nickgerace.dev"
  url "https://github.com/nickgerace/reelpath/archive/1.1.0.tar.gz"
  sha256 "d00c44bc6c7c952e76ac6484860bb8410bb2cd7a6248360334246812c57460ce"
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
