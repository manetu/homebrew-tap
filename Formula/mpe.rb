class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.10-4.44"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.10-4.44/mpe-1.0.10-4.44.tar.gz"
  sha256 "230728313b030ec93c6ab380eea156c950695f813155fa6c40b4fbbaab63cce5"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.10-4.44"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "587b9a06edb70fb9a8e3e8b2b375cd58bbcd49d6138f7690162aea4f3576a269"
    sha256 cellar: :any_skip_relocation, monterey: "e54e78b9a8dc8f14b80bb55ad8d7e01afb531f8ca7a7130cbe6284a1a4ef27ad"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "28baa16d2123f9b78f841f35337b9fc2a65fbc3470e9ca4534a6b5f6f5c5750a"
    sha256 cellar: :any_skip_relocation, arm64_linux: "469ad3680f8b31fc66186863a2fc0da98eb08c87348e32c082a4ba8617224469"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
