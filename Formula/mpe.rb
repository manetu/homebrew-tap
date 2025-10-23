class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.9-3"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-3/mpe-1.0.9-3.tar.gz"
  sha256 "5eeef75afa699353b9715501427b02bcaf2376db0937cc9493904cdf378f83e1"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-3"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "eb4ddd44313c9f59c6118026f7789f6d3860ff57b6793f6eff77a5623ed3604b"
    sha256 cellar: :any_skip_relocation, monterey: "bdbf316a8f2c3b401e6703d2d285437ed94caf56c9908c0ffca18fd186e3886f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2fa41af45e2d61950f34a68bd002cf31b8ab0ff59628931626f25bba8d50f31c"
    sha256 cellar: :any_skip_relocation, arm64_linux: "0e7c25392d8840b2ead20121f679a4d99cf62c5323235b8ed59397976c6bf1b3"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
