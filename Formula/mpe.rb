class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.9-6.36"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-6.36/mpe-1.0.9-6.36.tar.gz"
  sha256 "21e529f583fda2d2196a86d8a539644596dc07db1222f7483c6182b15b83ef26"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-6.36"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "5c90cc216896c1eff2dc4f39f8d67163b349f82b359068f7fcb502db77f3bc99"
    sha256 cellar: :any_skip_relocation, monterey: "854dbe1ae264d2f27e50a5b477554f879bb22109f05a2b685e99750430ad2c07"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f5abc4ebb3e81104d10ec362e46002e0017a1f14f5c9391cb9b81c6baefc7549"
    sha256 cellar: :any_skip_relocation, arm64_linux: "03a4c660676f62a4cd181ffe1dc6ebdd592c7beda8806a6dd84bb5571dabc7e8"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
