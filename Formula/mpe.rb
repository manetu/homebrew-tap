class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.8"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.8/mpe-1.0.8.tar.gz"
  sha256 "f16da7b6dbf2d023e7fdc11c9b5a4ad527ea828303c144108047af5726bd2c15"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.8"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "72d8030710dbb505fa72fa87988b1d63cd36511bfcafe3f1215a281dd2419fd2"
    sha256 cellar: :any_skip_relocation, monterey: "1e112756ced0a5ec687689a94268b5ba5421d6a96acc3aceece36bd3f344a623"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5099952f3c7a4e9eccf8a11f671d8bdb086f9ea2025b70b0814f13619cf6edf3"
    sha256 cellar: :any_skip_relocation, arm64_linux: "b432060c0ee5682149a9b719e9a09d7517307d0b7ac780c6f5db6c9faedf804f"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
