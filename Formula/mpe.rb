class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.2"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.2/mpe-1.0.2.tar.gz"
  sha256 "8ab5dcea64bf8aa6452f540a92ec9cffa343621a745ba14791d8afa8b038a980"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "f4fe6ee4436459bdc2b131c40bc6c526ea33f44d8c8f817eb1ddb43a24b43d6f"
    sha256 cellar: :any_skip_relocation, monterey: "d76bec94ff40430ab1076c2acff9225840a9b03083ac592bdd7e4facb4c2d43b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fcc537f50cd8e7651c61a9d48435723c3e005bf1fa98ff3dcb7ec53b0f945484"
    sha256 cellar: :any_skip_relocation, arm64_linux: "89b04da273d0e1669b32c671d6a64ec202d246e92179598e93e4fd6846273ec4"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
