class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.0"
  license "Proprietary"
  
  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.0/mpe-1.0.0.tar.gz"
  sha256 "0f96c54b7f6554010755d0933236482956a8d2653ac710554653e4f0596943ea"
  
  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "ebee7d579d6258a4fde5927e355f8338cb27f01d256d308ffb3ab25393004333"
    sha256 cellar: :any_skip_relocation, monterey: "8fb558a73189a5d68aace06e331d3a1f087d99b31507f53cf45be03bd3042792"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ab588a7a73779b33d633629d43dd7de86a73fc07f72eba03c2db80379d4a8c5a"
    sha256 cellar: :any_skip_relocation, arm64_linux: "dc8996e02e65b67eec31c1eb68eadd38c6c0d61ccd12071e45e64f07270f2812"
  end
  
  def install
    bin.install "bin/mpe"
  end
  
  test do
    system "#{bin}/mpe", "--help"
  end
end
